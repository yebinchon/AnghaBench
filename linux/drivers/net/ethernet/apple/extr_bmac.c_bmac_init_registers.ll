; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_bmac.c_bmac_init_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_bmac.c_bmac_init_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.bmac_data = type { i16*, i32 }

@RXRST = common dso_local global i32 0, align 4
@RxResetValue = common dso_local global i16 0, align 2
@TXRST = common dso_local global i32 0, align 4
@TxResetBit = common dso_local global i16 0, align 2
@XCVRIF = common dso_local global i32 0, align 4
@ClkBit = common dso_local global i16 0, align 2
@SerialMode = common dso_local global i16 0, align 2
@COLActiveLow = common dso_local global i16 0, align 2
@RSEED = common dso_local global i32 0, align 4
@XIFC = common dso_local global i32 0, align 4
@TxOutputEnable = common dso_local global i16 0, align 2
@PAREG = common dso_local global i32 0, align 4
@NCCNT = common dso_local global i32 0, align 4
@NTCNT = common dso_local global i32 0, align 4
@EXCNT = common dso_local global i32 0, align 4
@LTCNT = common dso_local global i32 0, align 4
@FRCNT = common dso_local global i32 0, align 4
@LECNT = common dso_local global i32 0, align 4
@AECNT = common dso_local global i32 0, align 4
@FECNT = common dso_local global i32 0, align 4
@RXCV = common dso_local global i32 0, align 4
@TXTH = common dso_local global i32 0, align 4
@TXFIFOCSR = common dso_local global i32 0, align 4
@TxFIFOEnable = common dso_local global i16 0, align 2
@RXFIFOCSR = common dso_local global i32 0, align 4
@RxFIFOEnable = common dso_local global i16 0, align 2
@STATUS = common dso_local global i32 0, align 4
@BHASH3 = common dso_local global i32 0, align 4
@BHASH2 = common dso_local global i32 0, align 4
@BHASH1 = common dso_local global i32 0, align 4
@BHASH0 = common dso_local global i32 0, align 4
@MADD0 = common dso_local global i32 0, align 4
@MADD1 = common dso_local global i32 0, align 4
@MADD2 = common dso_local global i32 0, align 4
@RXCFG = common dso_local global i32 0, align 4
@RxCRCNoStrip = common dso_local global i16 0, align 2
@RxHashFilterEnable = common dso_local global i16 0, align 2
@RxRejectOwnPackets = common dso_local global i16 0, align 2
@INTDISABLE = common dso_local global i32 0, align 4
@EnableNormal = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bmac_init_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bmac_init_registers(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bmac_data*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.bmac_data* @netdev_priv(%struct.net_device* %7)
  store %struct.bmac_data* %8, %struct.bmac_data** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load i32, i32* @RXRST, align 4
  %11 = load i16, i16* @RxResetValue, align 2
  %12 = call i32 @bmwrite(%struct.net_device* %9, i32 %10, i16 zeroext %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load i32, i32* @TXRST, align 4
  %15 = load volatile i16, i16* @TxResetBit, align 2
  %16 = call i32 @bmwrite(%struct.net_device* %13, i32 %14, i16 zeroext %15)
  store i32 100, i32* %6, align 4
  br label %17

17:                                               ; preds = %34, %1
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %6, align 4
  %20 = call i32 @udelay(i32 10000)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load i32, i32* @TXRST, align 4
  %23 = call zeroext i16 @bmread(%struct.net_device* %21, i32 %22)
  store volatile i16 %23, i16* %4, align 2
  br label %24

24:                                               ; preds = %17
  %25 = load volatile i16, i16* %4, align 2
  %26 = zext i16 %25 to i32
  %27 = load volatile i16, i16* @TxResetBit, align 2
  %28 = zext i16 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 0
  br label %34

34:                                               ; preds = %31, %24
  %35 = phi i1 [ false, %24 ], [ %33, %31 ]
  br i1 %35, label %17, label %36

36:                                               ; preds = %34
  %37 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %38 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %36
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = load i32, i32* @XCVRIF, align 4
  %44 = call zeroext i16 @bmread(%struct.net_device* %42, i32 %43)
  store volatile i16 %44, i16* %4, align 2
  %45 = load volatile i16, i16* @ClkBit, align 2
  %46 = zext i16 %45 to i32
  %47 = load volatile i16, i16* @SerialMode, align 2
  %48 = zext i16 %47 to i32
  %49 = or i32 %46, %48
  %50 = load volatile i16, i16* @COLActiveLow, align 2
  %51 = zext i16 %50 to i32
  %52 = or i32 %49, %51
  %53 = load volatile i16, i16* %4, align 2
  %54 = zext i16 %53 to i32
  %55 = or i32 %54, %52
  %56 = trunc i32 %55 to i16
  store volatile i16 %56, i16* %4, align 2
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = load i32, i32* @XCVRIF, align 4
  %59 = load volatile i16, i16* %4, align 2
  %60 = call i32 @bmwrite(%struct.net_device* %57, i32 %58, i16 zeroext %59)
  %61 = call i32 @udelay(i32 10000)
  br label %62

62:                                               ; preds = %41, %36
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = load i32, i32* @RSEED, align 4
  %65 = call i32 @bmwrite(%struct.net_device* %63, i32 %64, i16 zeroext 6504)
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = load i32, i32* @XIFC, align 4
  %68 = call zeroext i16 @bmread(%struct.net_device* %66, i32 %67)
  store volatile i16 %68, i16* %4, align 2
  %69 = load volatile i16, i16* @TxOutputEnable, align 2
  %70 = zext i16 %69 to i32
  %71 = load volatile i16, i16* %4, align 2
  %72 = zext i16 %71 to i32
  %73 = or i32 %72, %70
  %74 = trunc i32 %73 to i16
  store volatile i16 %74, i16* %4, align 2
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = load i32, i32* @XIFC, align 4
  %77 = load volatile i16, i16* %4, align 2
  %78 = call i32 @bmwrite(%struct.net_device* %75, i32 %76, i16 zeroext %77)
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = load i32, i32* @PAREG, align 4
  %81 = call zeroext i16 @bmread(%struct.net_device* %79, i32 %80)
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = load i32, i32* @NCCNT, align 4
  %84 = call i32 @bmwrite(%struct.net_device* %82, i32 %83, i16 zeroext 0)
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = load i32, i32* @NTCNT, align 4
  %87 = call i32 @bmwrite(%struct.net_device* %85, i32 %86, i16 zeroext 0)
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = load i32, i32* @EXCNT, align 4
  %90 = call i32 @bmwrite(%struct.net_device* %88, i32 %89, i16 zeroext 0)
  %91 = load %struct.net_device*, %struct.net_device** %2, align 8
  %92 = load i32, i32* @LTCNT, align 4
  %93 = call i32 @bmwrite(%struct.net_device* %91, i32 %92, i16 zeroext 0)
  %94 = load %struct.net_device*, %struct.net_device** %2, align 8
  %95 = load i32, i32* @FRCNT, align 4
  %96 = call i32 @bmwrite(%struct.net_device* %94, i32 %95, i16 zeroext 0)
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = load i32, i32* @LECNT, align 4
  %99 = call i32 @bmwrite(%struct.net_device* %97, i32 %98, i16 zeroext 0)
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = load i32, i32* @AECNT, align 4
  %102 = call i32 @bmwrite(%struct.net_device* %100, i32 %101, i16 zeroext 0)
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = load i32, i32* @FECNT, align 4
  %105 = call i32 @bmwrite(%struct.net_device* %103, i32 %104, i16 zeroext 0)
  %106 = load %struct.net_device*, %struct.net_device** %2, align 8
  %107 = load i32, i32* @RXCV, align 4
  %108 = call i32 @bmwrite(%struct.net_device* %106, i32 %107, i16 zeroext 0)
  %109 = load %struct.net_device*, %struct.net_device** %2, align 8
  %110 = load i32, i32* @TXTH, align 4
  %111 = call i32 @bmwrite(%struct.net_device* %109, i32 %110, i16 zeroext 4)
  %112 = load %struct.net_device*, %struct.net_device** %2, align 8
  %113 = load i32, i32* @TXFIFOCSR, align 4
  %114 = call i32 @bmwrite(%struct.net_device* %112, i32 %113, i16 zeroext 0)
  %115 = load %struct.net_device*, %struct.net_device** %2, align 8
  %116 = load i32, i32* @TXFIFOCSR, align 4
  %117 = load i16, i16* @TxFIFOEnable, align 2
  %118 = call i32 @bmwrite(%struct.net_device* %115, i32 %116, i16 zeroext %117)
  %119 = load %struct.net_device*, %struct.net_device** %2, align 8
  %120 = load i32, i32* @RXFIFOCSR, align 4
  %121 = call i32 @bmwrite(%struct.net_device* %119, i32 %120, i16 zeroext 0)
  %122 = load %struct.net_device*, %struct.net_device** %2, align 8
  %123 = load i32, i32* @RXFIFOCSR, align 4
  %124 = load i16, i16* @RxFIFOEnable, align 2
  %125 = call i32 @bmwrite(%struct.net_device* %122, i32 %123, i16 zeroext %124)
  %126 = load %struct.net_device*, %struct.net_device** %2, align 8
  %127 = load i32, i32* @STATUS, align 4
  %128 = call zeroext i16 @bmread(%struct.net_device* %126, i32 %127)
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %139, %62
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %130, 4
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %134 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %133, i32 0, i32 0
  %135 = load i16*, i16** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i16, i16* %135, i64 %137
  store i16 0, i16* %138, align 2
  br label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %129

142:                                              ; preds = %129
  %143 = load %struct.net_device*, %struct.net_device** %2, align 8
  %144 = load i32, i32* @BHASH3, align 4
  %145 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %146 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %145, i32 0, i32 0
  %147 = load i16*, i16** %146, align 8
  %148 = getelementptr inbounds i16, i16* %147, i64 0
  %149 = load i16, i16* %148, align 2
  %150 = call i32 @bmwrite(%struct.net_device* %143, i32 %144, i16 zeroext %149)
  %151 = load %struct.net_device*, %struct.net_device** %2, align 8
  %152 = load i32, i32* @BHASH2, align 4
  %153 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %154 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %153, i32 0, i32 0
  %155 = load i16*, i16** %154, align 8
  %156 = getelementptr inbounds i16, i16* %155, i64 1
  %157 = load i16, i16* %156, align 2
  %158 = call i32 @bmwrite(%struct.net_device* %151, i32 %152, i16 zeroext %157)
  %159 = load %struct.net_device*, %struct.net_device** %2, align 8
  %160 = load i32, i32* @BHASH1, align 4
  %161 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %162 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %161, i32 0, i32 0
  %163 = load i16*, i16** %162, align 8
  %164 = getelementptr inbounds i16, i16* %163, i64 2
  %165 = load i16, i16* %164, align 2
  %166 = call i32 @bmwrite(%struct.net_device* %159, i32 %160, i16 zeroext %165)
  %167 = load %struct.net_device*, %struct.net_device** %2, align 8
  %168 = load i32, i32* @BHASH0, align 4
  %169 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %170 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %169, i32 0, i32 0
  %171 = load i16*, i16** %170, align 8
  %172 = getelementptr inbounds i16, i16* %171, i64 3
  %173 = load i16, i16* %172, align 2
  %174 = call i32 @bmwrite(%struct.net_device* %167, i32 %168, i16 zeroext %173)
  %175 = load %struct.net_device*, %struct.net_device** %2, align 8
  %176 = getelementptr inbounds %struct.net_device, %struct.net_device* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to i16*
  store i16* %178, i16** %5, align 8
  %179 = load %struct.net_device*, %struct.net_device** %2, align 8
  %180 = load i32, i32* @MADD0, align 4
  %181 = load i16*, i16** %5, align 8
  %182 = getelementptr inbounds i16, i16* %181, i32 1
  store i16* %182, i16** %5, align 8
  %183 = load i16, i16* %181, align 2
  %184 = call i32 @bmwrite(%struct.net_device* %179, i32 %180, i16 zeroext %183)
  %185 = load %struct.net_device*, %struct.net_device** %2, align 8
  %186 = load i32, i32* @MADD1, align 4
  %187 = load i16*, i16** %5, align 8
  %188 = getelementptr inbounds i16, i16* %187, i32 1
  store i16* %188, i16** %5, align 8
  %189 = load i16, i16* %187, align 2
  %190 = call i32 @bmwrite(%struct.net_device* %185, i32 %186, i16 zeroext %189)
  %191 = load %struct.net_device*, %struct.net_device** %2, align 8
  %192 = load i32, i32* @MADD2, align 4
  %193 = load i16*, i16** %5, align 8
  %194 = load i16, i16* %193, align 2
  %195 = call i32 @bmwrite(%struct.net_device* %191, i32 %192, i16 zeroext %194)
  %196 = load %struct.net_device*, %struct.net_device** %2, align 8
  %197 = load i32, i32* @RXCFG, align 4
  %198 = load i16, i16* @RxCRCNoStrip, align 2
  %199 = zext i16 %198 to i32
  %200 = load i16, i16* @RxHashFilterEnable, align 2
  %201 = zext i16 %200 to i32
  %202 = or i32 %199, %201
  %203 = load i16, i16* @RxRejectOwnPackets, align 2
  %204 = zext i16 %203 to i32
  %205 = or i32 %202, %204
  %206 = trunc i32 %205 to i16
  %207 = call i32 @bmwrite(%struct.net_device* %196, i32 %197, i16 zeroext %206)
  %208 = load %struct.net_device*, %struct.net_device** %2, align 8
  %209 = load i32, i32* @INTDISABLE, align 4
  %210 = load i16, i16* @EnableNormal, align 2
  %211 = call i32 @bmwrite(%struct.net_device* %208, i32 %209, i16 zeroext %210)
  ret void
}

declare dso_local %struct.bmac_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bmwrite(%struct.net_device*, i32, i16 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i16 @bmread(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
