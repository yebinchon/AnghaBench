; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_sd_get_cid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_sd_get_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }

@SD_OCR_S18R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: Skipping voltage switch\0A\00", align 1
@SD_OCR_CCS = common dso_local global i32 0, align 4
@SD_OCR_XPC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_sd_get_cid(%struct.mmc_host* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 10, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 4
  br label %15

15:                                               ; preds = %93, %87, %4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @SD_OCR_S18R, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %24 = call i32 @mmc_hostname(%struct.mmc_host* %23)
  %25 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %18, %15
  %27 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %28 = call i32 @mmc_go_idle(%struct.mmc_host* %27)
  %29 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @mmc_send_if_cond(%struct.mmc_host* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @SD_OCR_CCS, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %26
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %43 = call i64 @mmc_host_uhs(%struct.mmc_host* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @SD_OCR_S18R, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %41, %38
  %50 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %51 = call i32 @sd_get_host_max_current(%struct.mmc_host* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp sgt i32 %52, 150
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @SD_OCR_XPC, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @mmc_send_app_op_cond(%struct.mmc_host* %59, i32 %60, i32* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %101

67:                                               ; preds = %58
  %68 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %69 = call i32 @mmc_host_is_spi(%struct.mmc_host* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %96, label %71

71:                                               ; preds = %67
  %72 = load i32*, i32** %9, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 1090519040
  %78 = icmp eq i32 %77, 1090519040
  br i1 %78, label %79, label %96

79:                                               ; preds = %74
  %80 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @mmc_set_uhs_voltage(%struct.mmc_host* %80, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @EAGAIN, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %12, align 4
  br label %15

90:                                               ; preds = %79
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 0, i32* %12, align 4
  br label %15

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95, %74, %71, %67
  %97 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @mmc_send_cid(%struct.mmc_host* %97, i32* %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %96, %65
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @mmc_go_idle(%struct.mmc_host*) #1

declare dso_local i32 @mmc_send_if_cond(%struct.mmc_host*, i32) #1

declare dso_local i64 @mmc_host_uhs(%struct.mmc_host*) #1

declare dso_local i32 @sd_get_host_max_current(%struct.mmc_host*) #1

declare dso_local i32 @mmc_send_app_op_cond(%struct.mmc_host*, i32, i32*) #1

declare dso_local i32 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_set_uhs_voltage(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_send_cid(%struct.mmc_host*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
