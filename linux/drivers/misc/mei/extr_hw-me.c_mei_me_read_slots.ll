; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_read_slots.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_read_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }

@MEI_SLOT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, i8*, i64)* @mei_me_read_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_me_read_slots(%struct.mei_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i8**
  store i8** %10, i8*** %7, align 8
  br label %11

11:                                               ; preds = %20, %3
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @MEI_SLOT_SIZE, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %17 = call i8* @mei_me_mecbrw_read(%struct.mei_device* %16)
  %18 = load i8**, i8*** %7, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** %7, align 8
  store i8* %17, i8** %18, align 8
  br label %20

20:                                               ; preds = %15
  %21 = load i64, i64* @MEI_SLOT_SIZE, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub i64 %22, %21
  store i64 %23, i64* %6, align 8
  br label %11

24:                                               ; preds = %11
  %25 = load i64, i64* %6, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %29 = call i8* @mei_me_mecbrw_read(%struct.mei_device* %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8**, i8*** %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @memcpy(i8** %30, i8** %8, i64 %31)
  br label %33

33:                                               ; preds = %27, %24
  %34 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %35 = call i32 @mei_hcsr_set_hig(%struct.mei_device* %34)
  ret i32 0
}

declare dso_local i8* @mei_me_mecbrw_read(%struct.mei_device*) #1

declare dso_local i32 @memcpy(i8**, i8**, i64) #1

declare dso_local i32 @mei_hcsr_set_hig(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
