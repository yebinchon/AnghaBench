; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_vexpress-syscfg.c_vexpress_syscfg_regmap_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_vexpress-syscfg.c_vexpress_syscfg_regmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.regmap = type opaque
%struct.device = type { i32 }
%struct.vexpress_syscfg = type { i32 }
%struct.vexpress_syscfg_func = type { i32, i8*, i32, i32*, %struct.vexpress_syscfg* }
%struct.property = type { i32, i32* }

@.str = private unnamed_addr constant [25 x i8] c"arm,vexpress-sysreg,func\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"arm,vexpress-energy\00", align 1
@template = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"func %p: %u/%u/%u/%u/%u\0A\00", align 1
@vexpress_syscfg_regmap_config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.regmap* (%struct.device*, i8*)* @vexpress_syscfg_regmap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.regmap* @vexpress_syscfg_regmap_init(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vexpress_syscfg*, align 8
  %8 = alloca %struct.vexpress_syscfg_func*, align 8
  %9 = alloca %struct.property*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.vexpress_syscfg*
  store %struct.vexpress_syscfg* %21, %struct.vexpress_syscfg** %7, align 8
  store i32* null, i32** %10, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vexpress_config_get_topo(i32 %24, i64* %13, i64* %14, i64* %15)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = call i8* @ERR_PTR(i32 %29)
  %31 = bitcast i8* %30 to %struct.regmap*
  store %struct.regmap* %31, %struct.regmap** %3, align 8
  br label %202

32:                                               ; preds = %2
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.property* @of_find_property(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %36, %struct.property** %9, align 8
  %37 = load %struct.property*, %struct.property** %9, align 8
  %38 = icmp ne %struct.property* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i8* @ERR_PTR(i32 %41)
  %43 = bitcast i8* %42 to %struct.regmap*
  store %struct.regmap* %43, %struct.regmap** %3, align 8
  br label %202

44:                                               ; preds = %32
  %45 = load %struct.property*, %struct.property** %9, align 8
  %46 = getelementptr inbounds %struct.property, %struct.property* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %48, 8
  %50 = udiv i64 %49, 2
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %12, align 4
  %52 = load %struct.property*, %struct.property** %9, align 8
  %53 = getelementptr inbounds %struct.property, %struct.property* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %10, align 8
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %80

57:                                               ; preds = %44
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @of_device_is_compatible(i32 %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  store i32 2, i32* %12, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %65, i32* %66, align 16
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %10, align 8
  %69 = load i32, i32* %67, align 4
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  store i32 %69, i32* %70, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = call i64 @be32_to_cpup(i32* %74)
  %76 = add nsw i64 %75, 1
  %77 = call i32 @cpu_to_be32(i64 %76)
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32* %79, i32** %10, align 8
  br label %80

80:                                               ; preds = %63, %57, %44
  %81 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %8, align 8
  %82 = load i32, i32* @template, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @struct_size(%struct.vexpress_syscfg_func* %81, i32 %82, i32 %83)
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.vexpress_syscfg_func* @kzalloc(i32 %84, i32 %85)
  store %struct.vexpress_syscfg_func* %86, %struct.vexpress_syscfg_func** %8, align 8
  %87 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %8, align 8
  %88 = icmp ne %struct.vexpress_syscfg_func* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  %92 = call i8* @ERR_PTR(i32 %91)
  %93 = bitcast i8* %92 to %struct.regmap*
  store %struct.regmap* %93, %struct.regmap** %3, align 8
  br label %202

94:                                               ; preds = %80
  %95 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %7, align 8
  %96 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %8, align 8
  %97 = getelementptr inbounds %struct.vexpress_syscfg_func, %struct.vexpress_syscfg_func* %96, i32 0, i32 4
  store %struct.vexpress_syscfg* %95, %struct.vexpress_syscfg** %97, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %8, align 8
  %100 = getelementptr inbounds %struct.vexpress_syscfg_func, %struct.vexpress_syscfg_func* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  store i32 0, i32* %16, align 4
  br label %101

101:                                              ; preds = %168, %94
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %171

105:                                              ; preds = %101
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %10, align 8
  %108 = call i64 @be32_to_cpup(i32* %106)
  store i64 %108, i64* %17, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %10, align 8
  %111 = call i64 @be32_to_cpup(i32* %109)
  store i64 %111, i64* %18, align 8
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %8, align 8
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %17, align 8
  %118 = load i64, i64* %18, align 8
  %119 = call i32 @dev_dbg(%struct.device* %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), %struct.vexpress_syscfg_func* %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118)
  %120 = load i64, i64* %15, align 8
  %121 = call i32 @SYS_CFGCTRL_DCC(i64 %120)
  %122 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %8, align 8
  %123 = getelementptr inbounds %struct.vexpress_syscfg_func, %struct.vexpress_syscfg_func* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = load i64, i64* %13, align 8
  %129 = call i32 @SYS_CFGCTRL_SITE(i64 %128)
  %130 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %8, align 8
  %131 = getelementptr inbounds %struct.vexpress_syscfg_func, %struct.vexpress_syscfg_func* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %129
  store i32 %137, i32* %135, align 4
  %138 = load i64, i64* %14, align 8
  %139 = call i32 @SYS_CFGCTRL_POSITION(i64 %138)
  %140 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %8, align 8
  %141 = getelementptr inbounds %struct.vexpress_syscfg_func, %struct.vexpress_syscfg_func* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %139
  store i32 %147, i32* %145, align 4
  %148 = load i64, i64* %17, align 8
  %149 = call i32 @SYS_CFGCTRL_FUNC(i64 %148)
  %150 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %8, align 8
  %151 = getelementptr inbounds %struct.vexpress_syscfg_func, %struct.vexpress_syscfg_func* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %16, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %149
  store i32 %157, i32* %155, align 4
  %158 = load i64, i64* %18, align 8
  %159 = call i32 @SYS_CFGCTRL_DEVICE(i64 %158)
  %160 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %8, align 8
  %161 = getelementptr inbounds %struct.vexpress_syscfg_func, %struct.vexpress_syscfg_func* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %16, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %159
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %105
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %16, align 4
  br label %101

171:                                              ; preds = %101
  %172 = load i32, i32* %12, align 4
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vexpress_syscfg_regmap_config, i32 0, i32 0), align 4
  %174 = load %struct.device*, %struct.device** %4, align 8
  %175 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %8, align 8
  %176 = call i8* @regmap_init(%struct.device* %174, i32* null, %struct.vexpress_syscfg_func* %175, %struct.TYPE_3__* @vexpress_syscfg_regmap_config)
  %177 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %8, align 8
  %178 = getelementptr inbounds %struct.vexpress_syscfg_func, %struct.vexpress_syscfg_func* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  %179 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %8, align 8
  %180 = getelementptr inbounds %struct.vexpress_syscfg_func, %struct.vexpress_syscfg_func* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = call i64 @IS_ERR(i8* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %171
  %185 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %8, align 8
  %186 = getelementptr inbounds %struct.vexpress_syscfg_func, %struct.vexpress_syscfg_func* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  store i8* %187, i8** %19, align 8
  %188 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %8, align 8
  %189 = call i32 @kfree(%struct.vexpress_syscfg_func* %188)
  %190 = load i8*, i8** %19, align 8
  %191 = bitcast i8* %190 to %struct.regmap*
  store %struct.regmap* %191, %struct.regmap** %3, align 8
  br label %202

192:                                              ; preds = %171
  %193 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %8, align 8
  %194 = getelementptr inbounds %struct.vexpress_syscfg_func, %struct.vexpress_syscfg_func* %193, i32 0, i32 2
  %195 = load %struct.vexpress_syscfg*, %struct.vexpress_syscfg** %7, align 8
  %196 = getelementptr inbounds %struct.vexpress_syscfg, %struct.vexpress_syscfg* %195, i32 0, i32 0
  %197 = call i32 @list_add(i32* %194, i32* %196)
  %198 = load %struct.vexpress_syscfg_func*, %struct.vexpress_syscfg_func** %8, align 8
  %199 = getelementptr inbounds %struct.vexpress_syscfg_func, %struct.vexpress_syscfg_func* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = bitcast i8* %200 to %struct.regmap*
  store %struct.regmap* %201, %struct.regmap** %3, align 8
  br label %202

202:                                              ; preds = %192, %184, %89, %39, %28
  %203 = load %struct.regmap*, %struct.regmap** %3, align 8
  ret %struct.regmap* %203
}

declare dso_local i32 @vexpress_config_get_topo(i32, i64*, i64*, i64*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local %struct.property* @of_find_property(i32, i8*, i32*) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i64 @be32_to_cpup(i32*) #1

declare dso_local %struct.vexpress_syscfg_func* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.vexpress_syscfg_func*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.vexpress_syscfg_func*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SYS_CFGCTRL_DCC(i64) #1

declare dso_local i32 @SYS_CFGCTRL_SITE(i64) #1

declare dso_local i32 @SYS_CFGCTRL_POSITION(i64) #1

declare dso_local i32 @SYS_CFGCTRL_FUNC(i64) #1

declare dso_local i32 @SYS_CFGCTRL_DEVICE(i64) #1

declare dso_local i8* @regmap_init(%struct.device*, i32*, %struct.vexpress_syscfg_func*, %struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @kfree(%struct.vexpress_syscfg_func*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
