; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_idmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_idmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i32, i32, i32, %struct.idmac_desc_64addr* }
%struct.idmac_desc_64addr = type { i32, i32, i32, i8*, i64, i64 }
%struct.idmac_desc = type { i32, i32, i32, i8*, i64, i64 }

@DESC_RING_BUF_SZ = common dso_local global i32 0, align 4
@IDMAC_DES0_ER = common dso_local global i32 0, align 4
@IDSTS64 = common dso_local global i32 0, align 4
@IDMAC_INT_CLR = common dso_local global i32 0, align 4
@IDINTEN64 = common dso_local global i32 0, align 4
@SDMMC_IDMAC_INT_NI = common dso_local global i32 0, align 4
@SDMMC_IDMAC_INT_RI = common dso_local global i32 0, align 4
@SDMMC_IDMAC_INT_TI = common dso_local global i32 0, align 4
@DBADDRL = common dso_local global i32 0, align 4
@DBADDRU = common dso_local global i32 0, align 4
@IDSTS = common dso_local global i32 0, align 4
@IDINTEN = common dso_local global i32 0, align 4
@DBADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci*)* @dw_mci_idmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_idmac_init(%struct.dw_mci* %0) #0 {
  %2 = alloca %struct.dw_mci*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.idmac_desc_64addr*, align 8
  %5 = alloca %struct.idmac_desc*, align 8
  store %struct.dw_mci* %0, %struct.dw_mci** %2, align 8
  %6 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %7 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %82

10:                                               ; preds = %1
  %11 = load i32, i32* @DESC_RING_BUF_SZ, align 4
  %12 = sext i32 %11 to i64
  %13 = udiv i64 %12, 40
  %14 = trunc i64 %13 to i32
  %15 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %16 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  store i32 0, i32* %3, align 4
  %17 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %18 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %17, i32 0, i32 3
  %19 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %18, align 8
  store %struct.idmac_desc_64addr* %19, %struct.idmac_desc_64addr** %4, align 8
  br label %20

20:                                               ; preds = %62, %10
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %23 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %20
  %28 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %29 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 40, %34
  %36 = add i64 %31, %35
  %37 = and i64 %36, 4294967295
  %38 = trunc i64 %37 to i32
  %39 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %4, align 8
  %40 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %42 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = mul i64 40, %47
  %49 = add i64 %44, %48
  %50 = trunc i64 %49 to i32
  %51 = ashr i32 %50, 32
  %52 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %4, align 8
  %53 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %4, align 8
  %55 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %4, align 8
  %57 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %56, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %4, align 8
  %59 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %4, align 8
  %61 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %60, i32 0, i32 3
  store i8* null, i8** %61, align 8
  br label %62

62:                                               ; preds = %27
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  %65 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %4, align 8
  %66 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %65, i32 1
  store %struct.idmac_desc_64addr* %66, %struct.idmac_desc_64addr** %4, align 8
  br label %20

67:                                               ; preds = %20
  %68 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %69 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %4, align 8
  %72 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %74 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = ashr i32 %75, 32
  %77 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %4, align 8
  %78 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @IDMAC_DES0_ER, align 4
  %80 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %4, align 8
  %81 = getelementptr inbounds %struct.idmac_desc_64addr, %struct.idmac_desc_64addr* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %135

82:                                               ; preds = %1
  %83 = load i32, i32* @DESC_RING_BUF_SZ, align 4
  %84 = sext i32 %83 to i64
  %85 = udiv i64 %84, 40
  %86 = trunc i64 %85 to i32
  %87 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %88 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  store i32 0, i32* %3, align 4
  %89 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %90 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %89, i32 0, i32 3
  %91 = load %struct.idmac_desc_64addr*, %struct.idmac_desc_64addr** %90, align 8
  %92 = bitcast %struct.idmac_desc_64addr* %91 to %struct.idmac_desc*
  store %struct.idmac_desc* %92, %struct.idmac_desc** %5, align 8
  br label %93

93:                                               ; preds = %118, %82
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %96 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 1
  %99 = icmp slt i32 %94, %98
  br i1 %99, label %100, label %123

100:                                              ; preds = %93
  %101 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %102 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = mul i64 40, %107
  %109 = add i64 %104, %108
  %110 = trunc i64 %109 to i32
  %111 = call i8* @cpu_to_le32(i32 %110)
  %112 = load %struct.idmac_desc*, %struct.idmac_desc** %5, align 8
  %113 = getelementptr inbounds %struct.idmac_desc, %struct.idmac_desc* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  %114 = load %struct.idmac_desc*, %struct.idmac_desc** %5, align 8
  %115 = getelementptr inbounds %struct.idmac_desc, %struct.idmac_desc* %114, i32 0, i32 2
  store i32 0, i32* %115, align 8
  %116 = load %struct.idmac_desc*, %struct.idmac_desc** %5, align 8
  %117 = getelementptr inbounds %struct.idmac_desc, %struct.idmac_desc* %116, i32 0, i32 4
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %100
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %3, align 4
  %121 = load %struct.idmac_desc*, %struct.idmac_desc** %5, align 8
  %122 = getelementptr inbounds %struct.idmac_desc, %struct.idmac_desc* %121, i32 1
  store %struct.idmac_desc* %122, %struct.idmac_desc** %5, align 8
  br label %93

123:                                              ; preds = %93
  %124 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %125 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @cpu_to_le32(i32 %126)
  %128 = load %struct.idmac_desc*, %struct.idmac_desc** %5, align 8
  %129 = getelementptr inbounds %struct.idmac_desc, %struct.idmac_desc* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* @IDMAC_DES0_ER, align 4
  %131 = call i8* @cpu_to_le32(i32 %130)
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.idmac_desc*, %struct.idmac_desc** %5, align 8
  %134 = getelementptr inbounds %struct.idmac_desc, %struct.idmac_desc* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %123, %67
  %136 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %137 = call i32 @dw_mci_idmac_reset(%struct.dw_mci* %136)
  %138 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %139 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %168

142:                                              ; preds = %135
  %143 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %144 = load i32, i32* @IDSTS64, align 4
  %145 = load i32, i32* @IDMAC_INT_CLR, align 4
  %146 = call i32 @mci_writel(%struct.dw_mci* %143, i32 %144, i32 %145)
  %147 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %148 = load i32, i32* @IDINTEN64, align 4
  %149 = load i32, i32* @SDMMC_IDMAC_INT_NI, align 4
  %150 = load i32, i32* @SDMMC_IDMAC_INT_RI, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @SDMMC_IDMAC_INT_TI, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @mci_writel(%struct.dw_mci* %147, i32 %148, i32 %153)
  %155 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %156 = load i32, i32* @DBADDRL, align 4
  %157 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %158 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @mci_writel(%struct.dw_mci* %155, i32 %156, i32 %159)
  %161 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %162 = load i32, i32* @DBADDRU, align 4
  %163 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %164 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = ashr i32 %165, 32
  %167 = call i32 @mci_writel(%struct.dw_mci* %161, i32 %162, i32 %166)
  br label %187

168:                                              ; preds = %135
  %169 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %170 = load i32, i32* @IDSTS, align 4
  %171 = load i32, i32* @IDMAC_INT_CLR, align 4
  %172 = call i32 @mci_writel(%struct.dw_mci* %169, i32 %170, i32 %171)
  %173 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %174 = load i32, i32* @IDINTEN, align 4
  %175 = load i32, i32* @SDMMC_IDMAC_INT_NI, align 4
  %176 = load i32, i32* @SDMMC_IDMAC_INT_RI, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @SDMMC_IDMAC_INT_TI, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @mci_writel(%struct.dw_mci* %173, i32 %174, i32 %179)
  %181 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %182 = load i32, i32* @DBADDR, align 4
  %183 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %184 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @mci_writel(%struct.dw_mci* %181, i32 %182, i32 %185)
  br label %187

187:                                              ; preds = %168, %142
  ret i32 0
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dw_mci_idmac_reset(%struct.dw_mci*) #1

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
