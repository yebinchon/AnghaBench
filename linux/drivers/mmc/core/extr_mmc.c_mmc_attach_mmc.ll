; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_attach_mmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_attach_mmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32*, i64, i64, i32 }

@MMC_BUSMODE_OPENDRAIN = common dso_local global i32 0, align 4
@mmc_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: error %d whilst initialising MMC card\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_attach_mmc(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %15 = call i64 @mmc_host_is_spi(%struct.mmc_host* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %19 = load i32, i32* @MMC_BUSMODE_OPENDRAIN, align 4
  %20 = call i32 @mmc_set_bus_mode(%struct.mmc_host* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %23 = call i32 @mmc_send_op_cond(%struct.mmc_host* %22, i32 0, i32* %5)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %98

28:                                               ; preds = %21
  %29 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %30 = call i32 @mmc_attach_bus(%struct.mmc_host* %29, i32* @mmc_ops)
  %31 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %37 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %40 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %28
  %42 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %43 = call i64 @mmc_host_is_spi(%struct.mmc_host* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %47 = call i32 @mmc_spi_read_ocr(%struct.mmc_host* %46, i32 1, i32* %5)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %90

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %41
  %53 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @mmc_select_voltage(%struct.mmc_host* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %90

61:                                               ; preds = %52
  %62 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @mmc_init_card(%struct.mmc_host* %62, i32 %63, i32* null)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %90

68:                                               ; preds = %61
  %69 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %70 = call i32 @mmc_release_host(%struct.mmc_host* %69)
  %71 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %72 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @mmc_add_card(i32* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %81

78:                                               ; preds = %68
  %79 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %80 = call i32 @mmc_claim_host(%struct.mmc_host* %79)
  store i32 0, i32* %2, align 4
  br label %98

81:                                               ; preds = %77
  %82 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %83 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @mmc_remove_card(i32* %84)
  %86 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %87 = call i32 @mmc_claim_host(%struct.mmc_host* %86)
  %88 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %89 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %81, %67, %58, %50
  %91 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %92 = call i32 @mmc_detach_bus(%struct.mmc_host* %91)
  %93 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %94 = call i32 @mmc_hostname(%struct.mmc_host* %93)
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %90, %78, %26
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_set_bus_mode(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_send_op_cond(%struct.mmc_host*, i32, i32*) #1

declare dso_local i32 @mmc_attach_bus(%struct.mmc_host*, i32*) #1

declare dso_local i32 @mmc_spi_read_ocr(%struct.mmc_host*, i32, i32*) #1

declare dso_local i32 @mmc_select_voltage(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_init_card(%struct.mmc_host*, i32, i32*) #1

declare dso_local i32 @mmc_release_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_add_card(i32*) #1

declare dso_local i32 @mmc_claim_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_remove_card(i32*) #1

declare dso_local i32 @mmc_detach_bus(%struct.mmc_host*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
