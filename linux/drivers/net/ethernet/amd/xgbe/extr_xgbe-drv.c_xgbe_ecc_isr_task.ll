; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_ecc_isr_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_ecc_isr_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.xgbe_prv_data.0*, i32)*, i32 (%struct.xgbe_prv_data.1*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_prv_data.1 = type opaque

@XP_ECC_ISR = common dso_local global i32 0, align 4
@XP_ECC_IER = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ECC_ISR=%#010x\0A\00", align 1
@TX_DED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"TX fifo\00", align 1
@RX_DED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"RX fifo\00", align 1
@DESC_DED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"descriptor cache\00", align 1
@TX_SEC = common dso_local global i32 0, align 4
@XGBE_ECC_SEC_TX = common dso_local global i32 0, align 4
@RX_SEC = common dso_local global i32 0, align 4
@XGBE_ECC_SEC_RX = common dso_local global i32 0, align 4
@DESC_SEC = common dso_local global i32 0, align 4
@XGBE_ECC_SEC_DESC = common dso_local global i32 0, align 4
@XP_INT_REISSUE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @xgbe_ecc_isr_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_ecc_isr_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.xgbe_prv_data*
  store %struct.xgbe_prv_data* %7, %struct.xgbe_prv_data** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %9 = load i32, i32* @XP_ECC_ISR, align 4
  %10 = call i32 @XP_IOREAD(%struct.xgbe_prv_data* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %12 = load i32, i32* @XP_ECC_IER, align 4
  %13 = call i32 @XP_IOREAD(%struct.xgbe_prv_data* %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %17 = load i32, i32* @intr, align 4
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %19 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %18, i32 0, i32 15
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @netif_dbg(%struct.xgbe_prv_data* %16, i32 %17, i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @XP_ECC_ISR, align 4
  %25 = load i32, i32* @TX_DED, align 4
  %26 = call i64 @XP_GET_BITS(i32 %23, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %1
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %30 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %31 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %30, i32 0, i32 14
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %33 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %32, i32 0, i32 13
  %34 = call i32 @xgbe_ecc_ded(%struct.xgbe_prv_data* %29, i32* %31, i32* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %28, %1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @XP_ECC_ISR, align 4
  %40 = load i32, i32* @RX_DED, align 4
  %41 = call i64 @XP_GET_BITS(i32 %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %46 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %45, i32 0, i32 12
  %47 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %48 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %47, i32 0, i32 11
  %49 = call i32 @xgbe_ecc_ded(%struct.xgbe_prv_data* %44, i32* %46, i32* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %43, %37
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @XP_ECC_ISR, align 4
  %55 = load i32, i32* @DESC_DED, align 4
  %56 = call i64 @XP_GET_BITS(i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %61 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %60, i32 0, i32 10
  %62 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %63 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %62, i32 0, i32 9
  %64 = call i32 @xgbe_ecc_ded(%struct.xgbe_prv_data* %59, i32* %61, i32* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %58, %52
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %72 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.1*)** %73, align 8
  %75 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %76 = bitcast %struct.xgbe_prv_data* %75 to %struct.xgbe_prv_data.1*
  %77 = call i32 %74(%struct.xgbe_prv_data.1* %76)
  %78 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %79 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %78, i32 0, i32 8
  %80 = call i32 @schedule_work(i32* %79)
  br label %154

81:                                               ; preds = %67
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @XP_ECC_ISR, align 4
  %84 = load i32, i32* @TX_SEC, align 4
  %85 = call i64 @XP_GET_BITS(i32 %82, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %81
  %88 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %89 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %90 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %89, i32 0, i32 7
  %91 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %92 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %91, i32 0, i32 6
  %93 = call i64 @xgbe_ecc_sec(%struct.xgbe_prv_data* %88, i32* %90, i32* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %87
  %96 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %97 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32 (%struct.xgbe_prv_data.0*, i32)*, i32 (%struct.xgbe_prv_data.0*, i32)** %98, align 8
  %100 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %101 = bitcast %struct.xgbe_prv_data* %100 to %struct.xgbe_prv_data.0*
  %102 = load i32, i32* @XGBE_ECC_SEC_TX, align 4
  %103 = call i32 %99(%struct.xgbe_prv_data.0* %101, i32 %102)
  br label %104

104:                                              ; preds = %95, %87
  br label %105

105:                                              ; preds = %104, %81
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @XP_ECC_ISR, align 4
  %108 = load i32, i32* @RX_SEC, align 4
  %109 = call i64 @XP_GET_BITS(i32 %106, i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %105
  %112 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %113 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %114 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %113, i32 0, i32 5
  %115 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %116 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %115, i32 0, i32 4
  %117 = call i64 @xgbe_ecc_sec(%struct.xgbe_prv_data* %112, i32* %114, i32* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %111
  %120 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %121 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32 (%struct.xgbe_prv_data.0*, i32)*, i32 (%struct.xgbe_prv_data.0*, i32)** %122, align 8
  %124 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %125 = bitcast %struct.xgbe_prv_data* %124 to %struct.xgbe_prv_data.0*
  %126 = load i32, i32* @XGBE_ECC_SEC_RX, align 4
  %127 = call i32 %123(%struct.xgbe_prv_data.0* %125, i32 %126)
  br label %128

128:                                              ; preds = %119, %111
  br label %129

129:                                              ; preds = %128, %105
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @XP_ECC_ISR, align 4
  %132 = load i32, i32* @DESC_SEC, align 4
  %133 = call i64 @XP_GET_BITS(i32 %130, i32 %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %129
  %136 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %137 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %138 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %137, i32 0, i32 3
  %139 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %140 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %139, i32 0, i32 2
  %141 = call i64 @xgbe_ecc_sec(%struct.xgbe_prv_data* %136, i32* %138, i32* %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %135
  %144 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %145 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32 (%struct.xgbe_prv_data.0*, i32)*, i32 (%struct.xgbe_prv_data.0*, i32)** %146, align 8
  %148 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %149 = bitcast %struct.xgbe_prv_data* %148 to %struct.xgbe_prv_data.0*
  %150 = load i32, i32* @XGBE_ECC_SEC_DESC, align 4
  %151 = call i32 %147(%struct.xgbe_prv_data.0* %149, i32 %150)
  br label %152

152:                                              ; preds = %143, %135
  br label %153

153:                                              ; preds = %152, %129
  br label %154

154:                                              ; preds = %153, %70
  %155 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %156 = load i32, i32* @XP_ECC_ISR, align 4
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @XP_IOWRITE(%struct.xgbe_prv_data* %155, i32 %156, i32 %157)
  %159 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %160 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %154
  %166 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %167 = load i32, i32* @XP_INT_REISSUE_EN, align 4
  %168 = call i32 @XP_IOWRITE(%struct.xgbe_prv_data* %166, i32 %167, i32 2)
  br label %169

169:                                              ; preds = %165, %154
  ret void
}

declare dso_local i32 @XP_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*, i32) #1

declare dso_local i64 @XP_GET_BITS(i32, i32, i32) #1

declare dso_local i32 @xgbe_ecc_ded(%struct.xgbe_prv_data*, i32*, i32*, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @xgbe_ecc_sec(%struct.xgbe_prv_data*, i32*, i32*, i8*) #1

declare dso_local i32 @XP_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
