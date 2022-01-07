; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_receive_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_receive_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { %struct.device }
%struct.device = type { i32 }
%struct.rave_sp = type { %struct.rave_sp_deframer }
%struct.rave_sp_deframer = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Bad frame: STX before ETX\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Bad frame: Too long\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_device*, i8*, i64)* @rave_sp_receive_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rave_sp_receive_buf(%struct.serdev_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.serdev_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.rave_sp*, align 8
  %10 = alloca %struct.rave_sp_deframer*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  store %struct.serdev_device* %0, %struct.serdev_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.serdev_device*, %struct.serdev_device** %5, align 8
  %15 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = call %struct.rave_sp* @dev_get_drvdata(%struct.device* %16)
  store %struct.rave_sp* %17, %struct.rave_sp** %9, align 8
  %18 = load %struct.rave_sp*, %struct.rave_sp** %9, align 8
  %19 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %18, i32 0, i32 0
  store %struct.rave_sp_deframer* %19, %struct.rave_sp_deframer** %10, align 8
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %12, align 8
  br label %24

24:                                               ; preds = %84, %58, %3
  %25 = load i8*, i8** %11, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %85

28:                                               ; preds = %24
  %29 = load i8*, i8** %11, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %11, align 8
  %31 = load i8, i8* %29, align 1
  store i8 %31, i8* %13, align 1
  %32 = load %struct.rave_sp_deframer*, %struct.rave_sp_deframer** %10, align 8
  %33 = getelementptr inbounds %struct.rave_sp_deframer, %struct.rave_sp_deframer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %84 [
    i32 129, label %35
    i32 131, label %43
    i32 130, label %62
  ]

35:                                               ; preds = %28
  %36 = load i8, i8* %13, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 128
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.rave_sp_deframer*, %struct.rave_sp_deframer** %10, align 8
  %41 = getelementptr inbounds %struct.rave_sp_deframer, %struct.rave_sp_deframer* %40, i32 0, i32 0
  store i32 131, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %35
  br label %84

43:                                               ; preds = %28
  %44 = load i8, i8* %13, align 1
  %45 = zext i8 %44 to i32
  switch i32 %45, label %61 [
    i32 132, label %46
    i32 128, label %55
    i32 133, label %58
  ]

46:                                               ; preds = %43
  %47 = load %struct.rave_sp*, %struct.rave_sp** %9, align 8
  %48 = load %struct.rave_sp_deframer*, %struct.rave_sp_deframer** %10, align 8
  %49 = getelementptr inbounds %struct.rave_sp_deframer, %struct.rave_sp_deframer* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.rave_sp_deframer*, %struct.rave_sp_deframer** %10, align 8
  %52 = getelementptr inbounds %struct.rave_sp_deframer, %struct.rave_sp_deframer* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @rave_sp_receive_frame(%struct.rave_sp* %47, i8* %50, i32 %53)
  br label %88

55:                                               ; preds = %43
  %56 = load %struct.device*, %struct.device** %8, align 8
  %57 = call i32 @dev_warn(%struct.device* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %88

58:                                               ; preds = %43
  %59 = load %struct.rave_sp_deframer*, %struct.rave_sp_deframer** %10, align 8
  %60 = getelementptr inbounds %struct.rave_sp_deframer, %struct.rave_sp_deframer* %59, i32 0, i32 0
  store i32 130, i32* %60, align 8
  br label %24

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %28, %61
  %63 = load %struct.rave_sp_deframer*, %struct.rave_sp_deframer** %10, align 8
  %64 = getelementptr inbounds %struct.rave_sp_deframer, %struct.rave_sp_deframer* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp eq i64 %66, 8
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.device*, %struct.device** %8, align 8
  %70 = call i32 @dev_warn(%struct.device* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %88

71:                                               ; preds = %62
  %72 = load i8, i8* %13, align 1
  %73 = load %struct.rave_sp_deframer*, %struct.rave_sp_deframer** %10, align 8
  %74 = getelementptr inbounds %struct.rave_sp_deframer, %struct.rave_sp_deframer* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.rave_sp_deframer*, %struct.rave_sp_deframer** %10, align 8
  %77 = getelementptr inbounds %struct.rave_sp_deframer, %struct.rave_sp_deframer* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %75, i64 %80
  store i8 %72, i8* %81, align 1
  %82 = load %struct.rave_sp_deframer*, %struct.rave_sp_deframer** %10, align 8
  %83 = getelementptr inbounds %struct.rave_sp_deframer, %struct.rave_sp_deframer* %82, i32 0, i32 0
  store i32 131, i32* %83, align 8
  br label %84

84:                                               ; preds = %28, %71, %42
  br label %24

85:                                               ; preds = %24
  %86 = load i64, i64* %7, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %4, align 4
  br label %99

88:                                               ; preds = %68, %55, %46
  %89 = load %struct.rave_sp_deframer*, %struct.rave_sp_deframer** %10, align 8
  %90 = getelementptr inbounds %struct.rave_sp_deframer, %struct.rave_sp_deframer* %89, i32 0, i32 0
  store i32 129, i32* %90, align 8
  %91 = load %struct.rave_sp_deframer*, %struct.rave_sp_deframer** %10, align 8
  %92 = getelementptr inbounds %struct.rave_sp_deframer, %struct.rave_sp_deframer* %91, i32 0, i32 2
  store i32 0, i32* %92, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %88, %85
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.rave_sp* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rave_sp_receive_frame(%struct.rave_sp*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
