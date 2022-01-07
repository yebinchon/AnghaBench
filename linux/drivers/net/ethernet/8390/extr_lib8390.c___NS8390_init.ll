; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_lib8390.c___NS8390_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_lib8390.c___NS8390_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32* }
%struct.ei_device = type { i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@ENDCFG_WTS = common dso_local global i32 0, align 4
@ENDCFG_BOS = common dso_local global i32 0, align 4
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
@ENISR_ALL = common dso_local global i32 0, align 4
@E8390_START = common dso_local global i32 0, align 4
@E8390_TXCONFIG = common dso_local global i32 0, align 4
@E8390_RXCONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @__NS8390_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__NS8390_init(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ei_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.ei_device* @netdev_priv(%struct.net_device* %12)
  store %struct.ei_device* %13, %struct.ei_device** %6, align 8
  %14 = load %struct.ei_device*, %struct.ei_device** %6, align 8
  %15 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load i32, i32* @ENDCFG_WTS, align 4
  %20 = or i32 72, %19
  %21 = load %struct.ei_device*, %struct.ei_device** %6, align 8
  %22 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @ENDCFG_BOS, align 4
  br label %28

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = or i32 %20, %29
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i32 [ %30, %28 ], [ 72, %31 ]
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @E8390_NODMA, align 4
  %35 = load i32, i32* @E8390_PAGE0, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* @E8390_STOP, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @E8390_CMD, align 8
  %41 = add i64 %39, %40
  %42 = call i32 @ei_outb_p(i32 %38, i64 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @EN0_DCFG, align 8
  %46 = add i64 %44, %45
  %47 = call i32 @ei_outb_p(i32 %43, i64 %46)
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @EN0_RCNTLO, align 8
  %50 = add i64 %48, %49
  %51 = call i32 @ei_outb_p(i32 0, i64 %50)
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @EN0_RCNTHI, align 8
  %54 = add i64 %52, %53
  %55 = call i32 @ei_outb_p(i32 0, i64 %54)
  %56 = load i32, i32* @E8390_RXOFF, align 4
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @EN0_RXCR, align 8
  %59 = add i64 %57, %58
  %60 = call i32 @ei_outb_p(i32 %56, i64 %59)
  %61 = load i32, i32* @E8390_TXOFF, align 4
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @EN0_TXCR, align 8
  %64 = add i64 %62, %63
  %65 = call i32 @ei_outb_p(i32 %61, i64 %64)
  %66 = load %struct.ei_device*, %struct.ei_device** %6, align 8
  %67 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @EN0_TPSR, align 8
  %71 = add i64 %69, %70
  %72 = call i32 @ei_outb_p(i32 %68, i64 %71)
  %73 = load %struct.ei_device*, %struct.ei_device** %6, align 8
  %74 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %73, i32 0, i32 5
  store i64 0, i64* %74, align 8
  %75 = load %struct.ei_device*, %struct.ei_device** %6, align 8
  %76 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %75, i32 0, i32 6
  store i64 0, i64* %76, align 8
  %77 = load %struct.ei_device*, %struct.ei_device** %6, align 8
  %78 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @EN0_STARTPG, align 8
  %82 = add i64 %80, %81
  %83 = call i32 @ei_outb_p(i32 %79, i64 %82)
  %84 = load %struct.ei_device*, %struct.ei_device** %6, align 8
  %85 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @EN0_BOUNDARY, align 8
  %90 = add i64 %88, %89
  %91 = call i32 @ei_outb_p(i32 %87, i64 %90)
  %92 = load %struct.ei_device*, %struct.ei_device** %6, align 8
  %93 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ei_device*, %struct.ei_device** %6, align 8
  %96 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ei_device*, %struct.ei_device** %6, align 8
  %98 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* @EN0_STOPPG, align 8
  %102 = add i64 %100, %101
  %103 = call i32 @ei_outb_p(i32 %99, i64 %102)
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* @EN0_ISR, align 8
  %106 = add i64 %104, %105
  %107 = call i32 @ei_outb_p(i32 255, i64 %106)
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* @EN0_IMR, align 8
  %110 = add i64 %108, %109
  %111 = call i32 @ei_outb_p(i32 0, i64 %110)
  %112 = load i32, i32* @E8390_NODMA, align 4
  %113 = load i32, i32* @E8390_PAGE1, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* @E8390_STOP, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* @E8390_CMD, align 8
  %119 = add i64 %117, %118
  %120 = call i32 @ei_outb_p(i32 %116, i64 %119)
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %159, %32
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 6
  br i1 %123, label %124, label %162

124:                                              ; preds = %121
  %125 = load %struct.net_device*, %struct.net_device** %3, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i64, i64* %5, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i64 @EN1_PHYS_SHIFT(i32 %133)
  %135 = add i64 %132, %134
  %136 = call i32 @ei_outb_p(i32 %131, i64 %135)
  %137 = load %struct.ei_device*, %struct.ei_device** %6, align 8
  %138 = call i64 @netif_msg_probe(%struct.ei_device* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %124
  %141 = load i64, i64* %5, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i64 @EN1_PHYS_SHIFT(i32 %142)
  %144 = add i64 %141, %143
  %145 = call i32 @ei_inb_p(i64 %144)
  %146 = load %struct.net_device*, %struct.net_device** %3, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %145, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %140
  %155 = load %struct.net_device*, %struct.net_device** %3, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @netdev_err(%struct.net_device* %155, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %154, %140, %124
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %121

162:                                              ; preds = %121
  %163 = load %struct.ei_device*, %struct.ei_device** %6, align 8
  %164 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i64, i64* %5, align 8
  %167 = load i64, i64* @EN1_CURPAG, align 8
  %168 = add i64 %166, %167
  %169 = call i32 @ei_outb_p(i32 %165, i64 %168)
  %170 = load i32, i32* @E8390_NODMA, align 4
  %171 = load i32, i32* @E8390_PAGE0, align 4
  %172 = add nsw i32 %170, %171
  %173 = load i32, i32* @E8390_STOP, align 4
  %174 = add nsw i32 %172, %173
  %175 = load i64, i64* %5, align 8
  %176 = load i64, i64* @E8390_CMD, align 8
  %177 = add i64 %175, %176
  %178 = call i32 @ei_outb_p(i32 %174, i64 %177)
  %179 = load %struct.ei_device*, %struct.ei_device** %6, align 8
  %180 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %179, i32 0, i32 5
  store i64 0, i64* %180, align 8
  %181 = load %struct.ei_device*, %struct.ei_device** %6, align 8
  %182 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %181, i32 0, i32 6
  store i64 0, i64* %182, align 8
  %183 = load %struct.ei_device*, %struct.ei_device** %6, align 8
  %184 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %183, i32 0, i32 4
  store i64 0, i64* %184, align 8
  %185 = load i32, i32* %4, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %218

187:                                              ; preds = %162
  %188 = load i64, i64* %5, align 8
  %189 = load i64, i64* @EN0_ISR, align 8
  %190 = add i64 %188, %189
  %191 = call i32 @ei_outb_p(i32 255, i64 %190)
  %192 = load i32, i32* @ENISR_ALL, align 4
  %193 = load i64, i64* %5, align 8
  %194 = load i64, i64* @EN0_IMR, align 8
  %195 = add i64 %193, %194
  %196 = call i32 @ei_outb_p(i32 %192, i64 %195)
  %197 = load i32, i32* @E8390_NODMA, align 4
  %198 = load i32, i32* @E8390_PAGE0, align 4
  %199 = add nsw i32 %197, %198
  %200 = load i32, i32* @E8390_START, align 4
  %201 = add nsw i32 %199, %200
  %202 = load i64, i64* %5, align 8
  %203 = load i64, i64* @E8390_CMD, align 8
  %204 = add i64 %202, %203
  %205 = call i32 @ei_outb_p(i32 %201, i64 %204)
  %206 = load i32, i32* @E8390_TXCONFIG, align 4
  %207 = load i64, i64* %5, align 8
  %208 = load i64, i64* @EN0_TXCR, align 8
  %209 = add i64 %207, %208
  %210 = call i32 @ei_outb_p(i32 %206, i64 %209)
  %211 = load i32, i32* @E8390_RXCONFIG, align 4
  %212 = load i64, i64* %5, align 8
  %213 = load i64, i64* @EN0_RXCR, align 8
  %214 = add i64 %212, %213
  %215 = call i32 @ei_outb_p(i32 %211, i64 %214)
  %216 = load %struct.net_device*, %struct.net_device** %3, align 8
  %217 = call i32 @do_set_multicast_list(%struct.net_device* %216)
  br label %218

218:                                              ; preds = %187, %162
  ret void
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ei_outb_p(i32, i64) #1

declare dso_local i64 @EN1_PHYS_SHIFT(i32) #1

declare dso_local i64 @netif_msg_probe(%struct.ei_device*) #1

declare dso_local i32 @ei_inb_p(i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @do_set_multicast_list(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
