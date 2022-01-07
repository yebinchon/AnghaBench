; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_print_rsvd_warning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_print_rsvd_warning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i64 }
%struct.ubi_attach_info = type { i32 }

@.str = private unnamed_addr constant [70 x i8] c"cannot reserve enough PEBs for bad PEB handling, reserved %d, need %d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%d PEBs are corrupted and not used\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubi_device*, %struct.ubi_attach_info*)* @print_rsvd_warning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_rsvd_warning(%struct.ubi_device* %0, %struct.ubi_attach_info* %1) #0 {
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca %struct.ubi_attach_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  store %struct.ubi_attach_info* %1, %struct.ubi_attach_info** %4, align 8
  %6 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %4, align 8
  %7 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 262144
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %12 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sdiv i32 %13, 10
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  store i32 1, i32* %5, align 4
  br label %18

18:                                               ; preds = %17, %10
  %19 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %20 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %46

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %28 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %29 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %32 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_warn(%struct.ubi_device* %27, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %36 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %41 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %42 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_warn(%struct.ubi_device* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %24, %39, %26
  ret void
}

declare dso_local i32 @ubi_warn(%struct.ubi_device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
