; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_AX88190_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_AX88190_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32* }
%struct.axnet_dev = type { i32, i32 }
%struct.ei_device = type { i32, i32, i32, i32, i64, i64, i64, i64 }

@ENDCFG_WTS = common dso_local global i32 0, align 4
@E8390_NODMA = common dso_local global i32 0, align 4
@E8390_PAGE0 = common dso_local global i32 0, align 4
@E8390_STOP = common dso_local global i32 0, align 4
@E8390_CMD = common dso_local global i64 0, align 8
@EN0_DCFG = common dso_local global i64 0, align 8
@EN0_RCNTLO = common dso_local global i64 0, align 8
@EN0_RCNTHI = common dso_local global i64 0, align 8
@E8390_RXOFF = common dso_local global i32 0, align 4
@EN0_RXCR = common dso_local global i64 0, align 8
@E8390_TXOFF = common dso_local global i32 0, align 4
@EN0_TXCR = common dso_local global i64 0, align 8
@EN0_TPSR = common dso_local global i64 0, align 8
@EN0_STARTPG = common dso_local global i64 0, align 8
@EN0_BOUNDARY = common dso_local global i64 0, align 8
@EN0_STOPPG = common dso_local global i64 0, align 8
@EN0_ISR = common dso_local global i64 0, align 8
@EN0_IMR = common dso_local global i64 0, align 8
@E8390_PAGE1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Hw. address read/write mismap %d\0A\00", align 1
@EN1_CURPAG = common dso_local global i64 0, align 8
@IS_AX88790 = common dso_local global i32 0, align 4
@AXNET_GPIO = common dso_local global i64 0, align 8
@ENISR_ALL = common dso_local global i32 0, align 4
@E8390_START = common dso_local global i32 0, align 4
@E8390_TXCONFIG = common dso_local global i32 0, align 4
@E8390_RXCONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @AX88190_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AX88190_init(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.axnet_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ei_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.axnet_dev* @PRIV(%struct.net_device* %10)
  store %struct.axnet_dev* %11, %struct.axnet_dev** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.ei_device* @netdev_priv(%struct.net_device* %15)
  store %struct.ei_device* %16, %struct.ei_device** %7, align 8
  %17 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %18 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENDCFG_WTS, align 4
  %23 = or i32 72, %22
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 72, %24 ]
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @E8390_NODMA, align 4
  %28 = load i32, i32* @E8390_PAGE0, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @E8390_STOP, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @E8390_CMD, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outb_p(i32 %31, i64 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @EN0_DCFG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb_p(i32 %36, i64 %39)
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @EN0_RCNTLO, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb_p(i32 0, i64 %43)
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @EN0_RCNTHI, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb_p(i32 0, i64 %47)
  %49 = load i32, i32* @E8390_RXOFF, align 4
  %50 = or i32 %49, 64
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @EN0_RXCR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @outb_p(i32 %50, i64 %53)
  %55 = load i32, i32* @E8390_TXOFF, align 4
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @EN0_TXCR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outb_p(i32 %55, i64 %58)
  %60 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %61 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @EN0_TPSR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outb_p(i32 %62, i64 %65)
  %67 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %68 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %67, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %70 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %69, i32 0, i32 6
  store i64 0, i64* %70, align 8
  %71 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %72 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @EN0_STARTPG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @outb_p(i32 %73, i64 %76)
  %78 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %79 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @EN0_BOUNDARY, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @outb_p(i32 %81, i64 %84)
  %86 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %87 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %90 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %92 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* @EN0_STOPPG, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @outb_p(i32 %93, i64 %96)
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* @EN0_ISR, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @outb_p(i32 255, i64 %100)
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* @EN0_IMR, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @outb_p(i32 0, i64 %104)
  %106 = load i32, i32* @E8390_NODMA, align 4
  %107 = load i32, i32* @E8390_PAGE1, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* @E8390_STOP, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* @E8390_CMD, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @outb_p(i32 %110, i64 %113)
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %149, %25
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 6
  br i1 %117, label %118, label %152

118:                                              ; preds = %115
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* %6, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i64 @EN1_PHYS_SHIFT(i32 %127)
  %129 = add nsw i64 %126, %128
  %130 = call i32 @outb_p(i32 %125, i64 %129)
  %131 = load i64, i64* %6, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i64 @EN1_PHYS_SHIFT(i32 %132)
  %134 = add nsw i64 %131, %133
  %135 = call i32 @inb_p(i64 %134)
  %136 = load %struct.net_device*, %struct.net_device** %3, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %135, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %118
  %145 = load %struct.net_device*, %struct.net_device** %3, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @netdev_err(%struct.net_device* %145, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %144, %118
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %115

152:                                              ; preds = %115
  %153 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %154 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* @EN1_CURPAG, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @outb_p(i32 %155, i64 %158)
  %160 = load i32, i32* @E8390_NODMA, align 4
  %161 = load i32, i32* @E8390_PAGE0, align 4
  %162 = add nsw i32 %160, %161
  %163 = load i32, i32* @E8390_STOP, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i64, i64* %6, align 8
  %166 = load i64, i64* @E8390_CMD, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i32 @outb_p(i32 %164, i64 %167)
  %169 = load %struct.net_device*, %struct.net_device** %3, align 8
  %170 = call i32 @netif_start_queue(%struct.net_device* %169)
  %171 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %172 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %171, i32 0, i32 5
  store i64 0, i64* %172, align 8
  %173 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %174 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %173, i32 0, i32 6
  store i64 0, i64* %174, align 8
  %175 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %176 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %175, i32 0, i32 4
  store i64 0, i64* %176, align 8
  %177 = load %struct.axnet_dev*, %struct.axnet_dev** %5, align 8
  %178 = getelementptr inbounds %struct.axnet_dev, %struct.axnet_dev* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @IS_AX88790, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %152
  %184 = load i64, i64* %6, align 8
  %185 = load i64, i64* @AXNET_GPIO, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @outb(i32 16, i64 %186)
  br label %188

188:                                              ; preds = %183, %152
  %189 = load i32, i32* %4, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %227

191:                                              ; preds = %188
  %192 = load i64, i64* %6, align 8
  %193 = load i64, i64* @EN0_ISR, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @outb_p(i32 255, i64 %194)
  %196 = load i32, i32* @ENISR_ALL, align 4
  %197 = load i64, i64* %6, align 8
  %198 = load i64, i64* @EN0_IMR, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @outb_p(i32 %196, i64 %199)
  %201 = load i32, i32* @E8390_NODMA, align 4
  %202 = load i32, i32* @E8390_PAGE0, align 4
  %203 = add nsw i32 %201, %202
  %204 = load i32, i32* @E8390_START, align 4
  %205 = add nsw i32 %203, %204
  %206 = load i64, i64* %6, align 8
  %207 = load i64, i64* @E8390_CMD, align 8
  %208 = add nsw i64 %206, %207
  %209 = call i32 @outb_p(i32 %205, i64 %208)
  %210 = load i32, i32* @E8390_TXCONFIG, align 4
  %211 = load %struct.axnet_dev*, %struct.axnet_dev** %5, align 8
  %212 = getelementptr inbounds %struct.axnet_dev, %struct.axnet_dev* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %210, %213
  %215 = load i64, i64* %6, align 8
  %216 = load i64, i64* @EN0_TXCR, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @outb_p(i32 %214, i64 %217)
  %219 = load i32, i32* @E8390_RXCONFIG, align 4
  %220 = or i32 %219, 64
  %221 = load i64, i64* %6, align 8
  %222 = load i64, i64* @EN0_RXCR, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i32 @outb_p(i32 %220, i64 %223)
  %225 = load %struct.net_device*, %struct.net_device** %3, align 8
  %226 = call i32 @do_set_multicast_list(%struct.net_device* %225)
  br label %227

227:                                              ; preds = %191, %188
  ret void
}

declare dso_local %struct.axnet_dev* @PRIV(%struct.net_device*) #1

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i64 @EN1_PHYS_SHIFT(i32) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @do_set_multicast_list(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
