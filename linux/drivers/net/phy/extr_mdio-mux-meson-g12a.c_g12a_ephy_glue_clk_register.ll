; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-meson-g12a.c_g12a_ephy_glue_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-meson-g12a.c_g12a_ephy_glue_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.g12a_mdio_mux = type { %struct.clk*, i64 }
%struct.clk = type { i32 }
%struct.clk_init_data = type { i8*, i8**, i32, i64, i32* }
%struct.g12a_ephy_pll = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_mux = type { i32, i32, %struct.TYPE_2__, i64 }

@PLL_MUX_NUM_PARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"clkin%d\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Missing clock %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s#mux\00", align 1
@clk_mux_ro_ops = common dso_local global i32 0, align 4
@ETH_PLL_CTL0 = common dso_local global i64 0, align 8
@PLL_CTL0_SEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to register input mux\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s#pll\00", align 1
@g12a_ephy_pll_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @g12a_ephy_glue_clk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g12a_ephy_glue_clk_register(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.g12a_mdio_mux*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_init_data, align 8
  %8 = alloca %struct.g12a_ephy_pll*, align 8
  %9 = alloca %struct.clk_mux*, align 8
  %10 = alloca %struct.clk*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [8 x i8], align 1
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call %struct.g12a_mdio_mux* @dev_get_drvdata(%struct.device* %15)
  store %struct.g12a_mdio_mux* %16, %struct.g12a_mdio_mux** %4, align 8
  %17 = load i32, i32* @PLL_MUX_NUM_PARENT, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i8*, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %54, %1
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @PLL_MUX_NUM_PARENT, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %21
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @snprintf(i8* %26, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %31 = call %struct.clk* @devm_clk_get(%struct.device* %29, i8* %30)
  store %struct.clk* %31, %struct.clk** %10, align 8
  %32 = load %struct.clk*, %struct.clk** %10, align 8
  %33 = call i64 @IS_ERR(%struct.clk* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %25
  %36 = load %struct.clk*, %struct.clk** %10, align 8
  %37 = call i32 @PTR_ERR(%struct.clk* %36)
  %38 = load i32, i32* @EPROBE_DEFER, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %41, %35
  %46 = load %struct.clk*, %struct.clk** %10, align 8
  %47 = call i32 @PTR_ERR(%struct.clk* %46)
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %176

48:                                               ; preds = %25
  %49 = load %struct.clk*, %struct.clk** %10, align 8
  %50 = call i8* @__clk_get_name(%struct.clk* %49)
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %20, i64 %52
  store i8* %50, i8** %53, align 8
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %21

57:                                               ; preds = %21
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @devm_kzalloc(%struct.device* %58, i32 24, i32 %59)
  %61 = bitcast i8* %60 to %struct.clk_mux*
  store %struct.clk_mux* %61, %struct.clk_mux** %9, align 8
  %62 = load %struct.clk_mux*, %struct.clk_mux** %9, align 8
  %63 = icmp ne %struct.clk_mux* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %176

67:                                               ; preds = %57
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = load %struct.device*, %struct.device** %3, align 8
  %70 = call i32 @dev_name(%struct.device* %69)
  %71 = call i8* @kasprintf(i32 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  store i8* %71, i8** %11, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %176

77:                                               ; preds = %67
  %78 = load i8*, i8** %11, align 8
  %79 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  store i8* %78, i8** %79, align 8
  %80 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 4
  store i32* @clk_mux_ro_ops, i32** %80, align 8
  %81 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 1
  store i8** %20, i8*** %82, align 8
  %83 = load i32, i32* @PLL_MUX_NUM_PARENT, align 4
  %84 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 2
  store i32 %83, i32* %84, align 8
  %85 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %4, align 8
  %86 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ETH_PLL_CTL0, align 8
  %89 = add nsw i64 %87, %88
  %90 = load %struct.clk_mux*, %struct.clk_mux** %9, align 8
  %91 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  %92 = load i32, i32* @PLL_CTL0_SEL, align 4
  %93 = call i32 @__ffs(i32 %92)
  %94 = load %struct.clk_mux*, %struct.clk_mux** %9, align 8
  %95 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @PLL_CTL0_SEL, align 4
  %97 = load %struct.clk_mux*, %struct.clk_mux** %9, align 8
  %98 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = ashr i32 %96, %99
  %101 = load %struct.clk_mux*, %struct.clk_mux** %9, align 8
  %102 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.clk_mux*, %struct.clk_mux** %9, align 8
  %104 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store %struct.clk_init_data* %7, %struct.clk_init_data** %105, align 8
  %106 = load %struct.device*, %struct.device** %3, align 8
  %107 = load %struct.clk_mux*, %struct.clk_mux** %9, align 8
  %108 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %107, i32 0, i32 2
  %109 = call %struct.clk* @devm_clk_register(%struct.device* %106, %struct.TYPE_2__* %108)
  store %struct.clk* %109, %struct.clk** %10, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 @kfree(i8* %110)
  %112 = load %struct.clk*, %struct.clk** %10, align 8
  %113 = call i64 @IS_ERR(%struct.clk* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %77
  %116 = load %struct.device*, %struct.device** %3, align 8
  %117 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %118 = load %struct.clk*, %struct.clk** %10, align 8
  %119 = call i32 @PTR_ERR(%struct.clk* %118)
  store i32 %119, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %176

120:                                              ; preds = %77
  %121 = load %struct.device*, %struct.device** %3, align 8
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i8* @devm_kzalloc(%struct.device* %121, i32 16, i32 %122)
  %124 = bitcast i8* %123 to %struct.g12a_ephy_pll*
  store %struct.g12a_ephy_pll* %124, %struct.g12a_ephy_pll** %8, align 8
  %125 = load %struct.g12a_ephy_pll*, %struct.g12a_ephy_pll** %8, align 8
  %126 = icmp ne %struct.g12a_ephy_pll* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %120
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %176

130:                                              ; preds = %120
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = load %struct.device*, %struct.device** %3, align 8
  %133 = call i32 @dev_name(%struct.device* %132)
  %134 = call i8* @kasprintf(i32 %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  store i8* %134, i8** %11, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %176

140:                                              ; preds = %130
  %141 = load i8*, i8** %11, align 8
  %142 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  store i8* %141, i8** %142, align 8
  %143 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 4
  store i32* @g12a_ephy_pll_ops, i32** %143, align 8
  %144 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 3
  store i64 0, i64* %144, align 8
  %145 = load %struct.clk*, %struct.clk** %10, align 8
  %146 = call i8* @__clk_get_name(%struct.clk* %145)
  %147 = getelementptr inbounds i8*, i8** %20, i64 0
  store i8* %146, i8** %147, align 16
  %148 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 1
  store i8** %20, i8*** %148, align 8
  %149 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 2
  store i32 1, i32* %149, align 8
  %150 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %4, align 8
  %151 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.g12a_ephy_pll*, %struct.g12a_ephy_pll** %8, align 8
  %154 = getelementptr inbounds %struct.g12a_ephy_pll, %struct.g12a_ephy_pll* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load %struct.g12a_ephy_pll*, %struct.g12a_ephy_pll** %8, align 8
  %156 = getelementptr inbounds %struct.g12a_ephy_pll, %struct.g12a_ephy_pll* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  store %struct.clk_init_data* %7, %struct.clk_init_data** %157, align 8
  %158 = load %struct.device*, %struct.device** %3, align 8
  %159 = load %struct.g12a_ephy_pll*, %struct.g12a_ephy_pll** %8, align 8
  %160 = getelementptr inbounds %struct.g12a_ephy_pll, %struct.g12a_ephy_pll* %159, i32 0, i32 0
  %161 = call %struct.clk* @devm_clk_register(%struct.device* %158, %struct.TYPE_2__* %160)
  store %struct.clk* %161, %struct.clk** %10, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = call i32 @kfree(i8* %162)
  %164 = load %struct.clk*, %struct.clk** %10, align 8
  %165 = call i64 @IS_ERR(%struct.clk* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %140
  %168 = load %struct.device*, %struct.device** %3, align 8
  %169 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %168, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %170 = load %struct.clk*, %struct.clk** %10, align 8
  %171 = call i32 @PTR_ERR(%struct.clk* %170)
  store i32 %171, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %176

172:                                              ; preds = %140
  %173 = load %struct.clk*, %struct.clk** %10, align 8
  %174 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %4, align 8
  %175 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %174, i32 0, i32 0
  store %struct.clk* %173, %struct.clk** %175, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %176

176:                                              ; preds = %172, %167, %137, %127, %115, %74, %64, %45
  %177 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.g12a_mdio_mux* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @__clk_get_name(%struct.clk*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local %struct.clk* @devm_clk_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
