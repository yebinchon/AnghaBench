; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_setup_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_setup_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_ao_cec_g12a_device = type { %struct.clk*, i32, i32, %struct.TYPE_3__* }
%struct.clk = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.meson_ao_cec_g12a_dualdiv_clk = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s#dualdiv_clk\00", align 1
@meson_ao_cec_g12a_dualdiv_clk_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to register clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_ao_cec_g12a_device*)* @meson_ao_cec_g12a_setup_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_ao_cec_g12a_setup_clk(%struct.meson_ao_cec_g12a_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meson_ao_cec_g12a_device*, align 8
  %4 = alloca %struct.meson_ao_cec_g12a_dualdiv_clk*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.clk_init_data, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca i8*, align 8
  store %struct.meson_ao_cec_g12a_device* %0, %struct.meson_ao_cec_g12a_device** %3, align 8
  %10 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %3, align 8
  %11 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.meson_ao_cec_g12a_dualdiv_clk* @devm_kzalloc(%struct.device* %14, i32 16, i32 %15)
  store %struct.meson_ao_cec_g12a_dualdiv_clk* %16, %struct.meson_ao_cec_g12a_dualdiv_clk** %4, align 8
  %17 = load %struct.meson_ao_cec_g12a_dualdiv_clk*, %struct.meson_ao_cec_g12a_dualdiv_clk** %4, align 8
  %18 = icmp ne %struct.meson_ao_cec_g12a_dualdiv_clk* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %69

22:                                               ; preds = %1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i32 @dev_name(%struct.device* %24)
  %26 = call i8* @kasprintf(i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %69

32:                                               ; preds = %22
  %33 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %3, align 8
  %34 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @__clk_get_name(i32 %35)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 4
  store i32* @meson_ao_cec_g12a_dualdiv_clk_ops, i32** %39, align 8
  %40 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 1
  store i8** %7, i8*** %41, align 8
  %42 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 2
  store i32 1, i32* %42, align 8
  %43 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %3, align 8
  %44 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.meson_ao_cec_g12a_dualdiv_clk*, %struct.meson_ao_cec_g12a_dualdiv_clk** %4, align 8
  %47 = getelementptr inbounds %struct.meson_ao_cec_g12a_dualdiv_clk, %struct.meson_ao_cec_g12a_dualdiv_clk* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.meson_ao_cec_g12a_dualdiv_clk*, %struct.meson_ao_cec_g12a_dualdiv_clk** %4, align 8
  %49 = getelementptr inbounds %struct.meson_ao_cec_g12a_dualdiv_clk, %struct.meson_ao_cec_g12a_dualdiv_clk* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store %struct.clk_init_data* %6, %struct.clk_init_data** %50, align 8
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = load %struct.meson_ao_cec_g12a_dualdiv_clk*, %struct.meson_ao_cec_g12a_dualdiv_clk** %4, align 8
  %53 = getelementptr inbounds %struct.meson_ao_cec_g12a_dualdiv_clk, %struct.meson_ao_cec_g12a_dualdiv_clk* %52, i32 0, i32 0
  %54 = call %struct.clk* @devm_clk_register(%struct.device* %51, %struct.TYPE_4__* %53)
  store %struct.clk* %54, %struct.clk** %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @kfree(i8* %55)
  %57 = load %struct.clk*, %struct.clk** %8, align 8
  %58 = call i64 @IS_ERR(%struct.clk* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %32
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.clk*, %struct.clk** %8, align 8
  %64 = call i32 @PTR_ERR(%struct.clk* %63)
  store i32 %64, i32* %2, align 4
  br label %69

65:                                               ; preds = %32
  %66 = load %struct.clk*, %struct.clk** %8, align 8
  %67 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %3, align 8
  %68 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %67, i32 0, i32 0
  store %struct.clk* %66, %struct.clk** %68, align 8
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %60, %29, %19
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.meson_ao_cec_g12a_dualdiv_clk* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i8* @__clk_get_name(i32) #1

declare dso_local %struct.clk* @devm_clk_register(%struct.device*, %struct.TYPE_4__*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
