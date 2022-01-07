; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_jz4780-nemc.c_jz4780_nemc_configure_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_jz4780-nemc.c_jz4780_nemc_configure_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_nemc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@jz4780_nemc_configure_bank.convert_tBP_tAW = internal constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 11, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 14, i32 14, i32 14, i32 14, i32 14, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15], align 16
@NEMC_SMCR_SMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ingenic,nemc-bus-width\00", align 1
@NEMC_SMCR_BW_MASK = common dso_local global i32 0, align 4
@NEMC_SMCR_BW_8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unsupported bus width: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ingenic,nemc-tAS\00", align 1
@NEMC_SMCR_TAS_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"tAS %u is too high (%u cycles)\0A\00", align 1
@NEMC_SMCR_TAS_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"ingenic,nemc-tAH\00", align 1
@NEMC_SMCR_TAH_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"tAH %u is too high (%u cycles)\0A\00", align 1
@NEMC_SMCR_TAH_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"ingenic,nemc-tBP\00", align 1
@NEMC_SMCR_TBP_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"tBP %u is too high (%u cycles)\0A\00", align 1
@NEMC_SMCR_TBP_SHIFT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"ingenic,nemc-tAW\00", align 1
@NEMC_SMCR_TAW_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"tAW %u is too high (%u cycles)\0A\00", align 1
@NEMC_SMCR_TAW_SHIFT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"ingenic,nemc-tSTRV\00", align 1
@NEMC_SMCR_TSTRV_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"tSTRV %u is too high (%u cycles)\0A\00", align 1
@NEMC_SMCR_TSTRV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_nemc*, i32, %struct.device_node*)* @jz4780_nemc_configure_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_nemc_configure_bank(%struct.jz4780_nemc* %0, i32 %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jz4780_nemc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.jz4780_nemc* %0, %struct.jz4780_nemc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %11 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %5, align 8
  %12 = getelementptr inbounds %struct.jz4780_nemc, %struct.jz4780_nemc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @NEMC_SMCRn(i32 %14)
  %16 = add nsw i64 %13, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @NEMC_SMCR_SMT, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %8, align 4
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = call i64 @of_property_read_u32(%struct.device_node* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %9)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @NEMC_SMCR_BW_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %35 [
    i32 8, label %31
  ]

31:                                               ; preds = %25
  %32 = load i32, i32* @NEMC_SMCR_BW_8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %41

35:                                               ; preds = %25
  %36 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %5, align 8
  %37 = getelementptr inbounds %struct.jz4780_nemc, %struct.jz4780_nemc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i32 0, i32* %4, align 4
  br label %202

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.device_node*, %struct.device_node** %7, align 8
  %44 = call i64 @of_property_read_u32(%struct.device_node* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %42
  %47 = load i32, i32* @NEMC_SMCR_TAS_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @jz4780_nemc_ns_to_cycles(%struct.jz4780_nemc* %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %5, align 8
  %56 = getelementptr inbounds %struct.jz4780_nemc, %struct.jz4780_nemc* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %54, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %46
  %62 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %5, align 8
  %63 = getelementptr inbounds %struct.jz4780_nemc, %struct.jz4780_nemc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %66)
  store i32 0, i32* %4, align 4
  br label %202

68:                                               ; preds = %46
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @NEMC_SMCR_TAS_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %68, %42
  %75 = load %struct.device_node*, %struct.device_node** %7, align 8
  %76 = call i64 @of_property_read_u32(%struct.device_node* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %9)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %74
  %79 = load i32, i32* @NEMC_SMCR_TAH_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @jz4780_nemc_ns_to_cycles(%struct.jz4780_nemc* %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %5, align 8
  %88 = getelementptr inbounds %struct.jz4780_nemc, %struct.jz4780_nemc* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %86, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %78
  %94 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %5, align 8
  %95 = getelementptr inbounds %struct.jz4780_nemc, %struct.jz4780_nemc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %97, i32 %98)
  store i32 0, i32* %4, align 4
  br label %202

100:                                              ; preds = %78
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @NEMC_SMCR_TAH_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %100, %74
  %107 = load %struct.device_node*, %struct.device_node** %7, align 8
  %108 = call i64 @of_property_read_u32(%struct.device_node* %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* %9)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %136

110:                                              ; preds = %106
  %111 = load i32, i32* @NEMC_SMCR_TBP_MASK, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %8, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @jz4780_nemc_ns_to_cycles(%struct.jz4780_nemc* %115, i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp sgt i32 %118, 31
  br i1 %119, label %120, label %127

120:                                              ; preds = %110
  %121 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %5, align 8
  %122 = getelementptr inbounds %struct.jz4780_nemc, %struct.jz4780_nemc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %124, i32 %125)
  store i32 0, i32* %4, align 4
  br label %202

127:                                              ; preds = %110
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [32 x i32], [32 x i32]* @jz4780_nemc_configure_bank.convert_tBP_tAW, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @NEMC_SMCR_TBP_SHIFT, align 4
  %133 = shl i32 %131, %132
  %134 = load i32, i32* %8, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %127, %106
  %137 = load %struct.device_node*, %struct.device_node** %7, align 8
  %138 = call i64 @of_property_read_u32(%struct.device_node* %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32* %9)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %166

140:                                              ; preds = %136
  %141 = load i32, i32* @NEMC_SMCR_TAW_MASK, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %8, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %8, align 4
  %145 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %5, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @jz4780_nemc_ns_to_cycles(%struct.jz4780_nemc* %145, i32 %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp sgt i32 %148, 31
  br i1 %149, label %150, label %157

150:                                              ; preds = %140
  %151 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %5, align 8
  %152 = getelementptr inbounds %struct.jz4780_nemc, %struct.jz4780_nemc* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %153, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %154, i32 %155)
  store i32 0, i32* %4, align 4
  br label %202

157:                                              ; preds = %140
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [32 x i32], [32 x i32]* @jz4780_nemc_configure_bank.convert_tBP_tAW, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @NEMC_SMCR_TAW_SHIFT, align 4
  %163 = shl i32 %161, %162
  %164 = load i32, i32* %8, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %157, %136
  %167 = load %struct.device_node*, %struct.device_node** %7, align 8
  %168 = call i64 @of_property_read_u32(%struct.device_node* %167, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32* %9)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %193

170:                                              ; preds = %166
  %171 = load i32, i32* @NEMC_SMCR_TSTRV_MASK, align 4
  %172 = xor i32 %171, -1
  %173 = load i32, i32* %8, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %8, align 4
  %175 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %5, align 8
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @jz4780_nemc_ns_to_cycles(%struct.jz4780_nemc* %175, i32 %176)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp sgt i32 %178, 63
  br i1 %179, label %180, label %187

180:                                              ; preds = %170
  %181 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %5, align 8
  %182 = getelementptr inbounds %struct.jz4780_nemc, %struct.jz4780_nemc* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %10, align 4
  %186 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %183, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %184, i32 %185)
  store i32 0, i32* %4, align 4
  br label %202

187:                                              ; preds = %170
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @NEMC_SMCR_TSTRV_SHIFT, align 4
  %190 = shl i32 %188, %189
  %191 = load i32, i32* %8, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %187, %166
  %194 = load i32, i32* %8, align 4
  %195 = load %struct.jz4780_nemc*, %struct.jz4780_nemc** %5, align 8
  %196 = getelementptr inbounds %struct.jz4780_nemc, %struct.jz4780_nemc* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = call i64 @NEMC_SMCRn(i32 %198)
  %200 = add nsw i64 %197, %199
  %201 = call i32 @writel(i32 %194, i64 %200)
  store i32 1, i32* %4, align 4
  br label %202

202:                                              ; preds = %193, %180, %150, %120, %93, %61, %35
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @NEMC_SMCRn(i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @jz4780_nemc_ns_to_cycles(%struct.jz4780_nemc*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
