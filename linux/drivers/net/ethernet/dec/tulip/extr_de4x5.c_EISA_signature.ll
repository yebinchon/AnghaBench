; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_EISA_signature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_EISA_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.eisa_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@de4x5_signatures = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.device*)* @EISA_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EISA_signature(i8* %0, %struct.device* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.eisa_device*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32*, i32** @de4x5_signatures, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %3, align 8
  store i8 0, i8* %11, align 1
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.eisa_device* @to_eisa_device(%struct.device* %12)
  store %struct.eisa_device* %13, %struct.eisa_device** %8, align 8
  %14 = load %struct.eisa_device*, %struct.eisa_device** %8, align 8
  %15 = getelementptr inbounds %struct.eisa_device, %struct.eisa_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i8*, i8** %3, align 8
  %26 = load i32*, i32** @de4x5_signatures, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcpy(i8* %25, i32 %30)
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %24, %20, %2
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.eisa_device* @to_eisa_device(%struct.device*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
