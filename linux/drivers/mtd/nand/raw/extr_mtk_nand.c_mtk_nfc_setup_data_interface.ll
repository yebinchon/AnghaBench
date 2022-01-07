; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_setup_data_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_setup_data_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_data_interface = type { i32 }
%struct.mtk_nfc = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nand_sdr_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@NAND_DATA_IFACE_CHECK_ONLY = common dso_local global i32 0, align 4
@MAX_STROBE_DLY = common dso_local global i32 0, align 4
@NFI_DEBUG_CON1 = common dso_local global i32 0, align 4
@STROBE_MASK = common dso_local global i32 0, align 4
@STROBE_SHIFT = common dso_local global i32 0, align 4
@NFI_ACCCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, %struct.nand_data_interface*)* @mtk_nfc_setup_data_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nfc_setup_data_interface(%struct.nand_chip* %0, i32 %1, %struct.nand_data_interface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_data_interface*, align 8
  %8 = alloca %struct.mtk_nfc*, align 8
  %9 = alloca %struct.nand_sdr_timings*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nand_data_interface* %2, %struct.nand_data_interface** %7, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %21 = call %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip* %20)
  store %struct.mtk_nfc* %21, %struct.mtk_nfc** %8, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %22 = load %struct.nand_data_interface*, %struct.nand_data_interface** %7, align 8
  %23 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface* %22)
  store %struct.nand_sdr_timings* %23, %struct.nand_sdr_timings** %9, align 8
  %24 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %25 = call i64 @IS_ERR(%struct.nand_sdr_timings* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %228

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @NAND_DATA_IFACE_CHECK_ONLY, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %228

35:                                               ; preds = %30
  %36 = load %struct.mtk_nfc*, %struct.mtk_nfc** %8, align 8
  %37 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @clk_get_rate(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.mtk_nfc*, %struct.mtk_nfc** %8, align 8
  %42 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sdiv i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sdiv i32 %48, 1000
  store i32 %49, i32* %10, align 4
  %50 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %51 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %54 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @max(i32 %52, i32 %55)
  %57 = sdiv i32 %56, 1000
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 %58, %59
  %61 = call i32 @DIV_ROUND_UP(i32 %60, i32 1000000)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %62, 15
  store i32 %63, i32* %11, align 4
  %64 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %65 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %68 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @max(i32 %66, i32 %69)
  %71 = sdiv i32 %70, 1000
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %10, align 4
  %74 = mul nsw i32 %72, %73
  %75 = call i32 @DIV_ROUND_UP(i32 %74, i32 1000000)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = and i32 %76, 63
  store i32 %77, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %78 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %79 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 1000
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %10, align 4
  %84 = mul nsw i32 %82, %83
  %85 = call i32 @DIV_ROUND_UP(i32 %84, i32 1000000)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = sub nsw i32 %86, 1
  %88 = call i32 @DIV_ROUND_UP(i32 %87, i32 2)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = and i32 %89, 15
  store i32 %90, i32* %14, align 4
  %91 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %92 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %95 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @max(i32 %93, i32 %96)
  %98 = sdiv i32 %97, 1000
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %10, align 4
  %101 = mul nsw i32 %99, %100
  %102 = call i32 @DIV_ROUND_UP(i32 %101, i32 1000000)
  %103 = sub nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = and i32 %104, 15
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 1
  %108 = mul nsw i32 %107, 1000000
  %109 = load i32, i32* %10, align 4
  %110 = sdiv i32 %108, %109
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = mul nsw i32 %111, 1000
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %115 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %35
  %119 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %120 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %18, align 4
  %123 = sub nsw i32 %121, %122
  store i32 %123, i32* %16, align 4
  br label %124

124:                                              ; preds = %118, %35
  %125 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %126 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @max(i32 %127, i32 %128)
  %130 = sdiv i32 %129, 1000
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %10, align 4
  %133 = mul nsw i32 %131, %132
  %134 = call i32 @DIV_ROUND_UP(i32 %133, i32 1000000)
  %135 = sub nsw i32 %134, 1
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = and i32 %136, 15
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %18, align 4
  %139 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %140 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %124
  %144 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %145 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %18, align 4
  %148 = sub nsw i32 %146, %147
  store i32 %148, i32* %17, align 4
  br label %149

149:                                              ; preds = %143, %124
  %150 = load i32, i32* %17, align 4
  %151 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %152 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %151, i32 0, i32 10
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @max(i32 %150, i32 %153)
  %155 = sdiv i32 %154, 1000
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %10, align 4
  %158 = mul nsw i32 %156, %157
  %159 = call i32 @DIV_ROUND_UP(i32 %158, i32 1000000)
  %160 = sub nsw i32 %159, 1
  store i32 %160, i32* %17, align 4
  %161 = load i32, i32* %17, align 4
  %162 = and i32 %161, 15
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %17, align 4
  %164 = add nsw i32 %163, 1
  %165 = mul nsw i32 %164, 1000000
  %166 = load i32, i32* %10, align 4
  %167 = sdiv i32 %165, %166
  store i32 %167, i32* %18, align 4
  %168 = load i32, i32* %18, align 4
  %169 = mul nsw i32 %168, 1000
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %18, align 4
  %171 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %172 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %171, i32 0, i32 11
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %199

175:                                              ; preds = %149
  %176 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %177 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %176, i32 0, i32 11
  %178 = load i32, i32* %177, align 4
  %179 = sdiv i32 %178, 1000
  store i32 %179, i32* %19, align 4
  %180 = load i32, i32* %19, align 4
  %181 = load i32, i32* %10, align 4
  %182 = mul nsw i32 %180, %181
  %183 = call i32 @DIV_ROUND_UP(i32 %182, i32 1000000)
  store i32 %183, i32* %19, align 4
  %184 = load i32, i32* %17, align 4
  %185 = add nsw i32 %184, 1
  %186 = load i32, i32* %19, align 4
  %187 = sub nsw i32 %186, %185
  store i32 %187, i32* %19, align 4
  %188 = load i32, i32* %19, align 4
  %189 = load i32, i32* @MAX_STROBE_DLY, align 4
  %190 = icmp sgt i32 %188, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %175
  %192 = load i32, i32* %19, align 4
  %193 = load i32, i32* @MAX_STROBE_DLY, align 4
  %194 = sub nsw i32 %192, %193
  %195 = load i32, i32* %17, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %17, align 4
  %197 = load i32, i32* @MAX_STROBE_DLY, align 4
  store i32 %197, i32* %19, align 4
  br label %198

198:                                              ; preds = %191, %175
  br label %199

199:                                              ; preds = %198, %149
  %200 = load %struct.mtk_nfc*, %struct.mtk_nfc** %8, align 8
  %201 = load i32, i32* @NFI_DEBUG_CON1, align 4
  %202 = call i32 @nfi_readl(%struct.mtk_nfc* %200, i32 %201)
  store i32 %202, i32* %18, align 4
  %203 = load i32, i32* @STROBE_MASK, align 4
  %204 = xor i32 %203, -1
  %205 = load i32, i32* %18, align 4
  %206 = and i32 %205, %204
  store i32 %206, i32* %18, align 4
  %207 = load i32, i32* %19, align 4
  %208 = load i32, i32* @STROBE_SHIFT, align 4
  %209 = shl i32 %207, %208
  %210 = load i32, i32* %18, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %18, align 4
  %212 = load %struct.mtk_nfc*, %struct.mtk_nfc** %8, align 8
  %213 = load i32, i32* %18, align 4
  %214 = load i32, i32* @NFI_DEBUG_CON1, align 4
  %215 = call i32 @nfi_writel(%struct.mtk_nfc* %212, i32 %213, i32 %214)
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %17, align 4
  %223 = call i32 @ACCTIMING(i32 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222)
  store i32 %223, i32* %17, align 4
  %224 = load %struct.mtk_nfc*, %struct.mtk_nfc** %8, align 8
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* @NFI_ACCCON, align 4
  %227 = call i32 @nfi_writel(%struct.mtk_nfc* %224, i32 %225, i32 %226)
  store i32 0, i32* %4, align 4
  br label %228

228:                                              ; preds = %199, %34, %27
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface*) #1

declare dso_local i64 @IS_ERR(%struct.nand_sdr_timings*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @nfi_readl(%struct.mtk_nfc*, i32) #1

declare dso_local i32 @nfi_writel(%struct.mtk_nfc*, i32, i32) #1

declare dso_local i32 @ACCTIMING(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
