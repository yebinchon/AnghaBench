; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_ei_tx_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_ei_tx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.ei_device = type { i32, i32, i32, i32, i64, i32, i32 }

@EN0_TSR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"%s: bogus last_tx_buffer %d, tx1=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: bogus last_tx_buffer %d, tx2=%d\0A\00", align 1
@ENTSR_COL = common dso_local global i32 0, align 4
@ENTSR_PTX = common dso_local global i32 0, align 4
@ENTSR_ABT = common dso_local global i32 0, align 4
@ENTSR_CRS = common dso_local global i32 0, align 4
@ENTSR_FU = common dso_local global i32 0, align 4
@ENTSR_CDH = common dso_local global i32 0, align 4
@ENTSR_OWC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ei_tx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ei_tx_intr(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ei_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.ei_device* @netdev_priv(%struct.net_device* %9)
  store %struct.ei_device* %10, %struct.ei_device** %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @EN0_TSR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @inb(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %16 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %20 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %76

23:                                               ; preds = %1
  %24 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %25 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %30 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %36 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %39 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %42 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @netdev_err(%struct.net_device* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %33, %28, %23
  %46 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %47 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %49 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %45
  %53 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %54 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %53, i32 0, i32 3
  store i32 1, i32* %54, align 4
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %57 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %60 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 6
  %63 = call i32 @NS8390_trigger_send(%struct.net_device* %55, i32 %58, i64 %62)
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = call i32 @netif_trans_update(%struct.net_device* %64)
  %66 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %67 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %66, i32 0, i32 2
  store i32 -1, i32* %67, align 8
  %68 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %69 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %68, i32 0, i32 1
  store i32 2, i32* %69, align 4
  br label %75

70:                                               ; preds = %45
  %71 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %72 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %71, i32 0, i32 1
  store i32 20, i32* %72, align 4
  %73 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %74 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %73, i32 0, i32 3
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %52
  br label %134

76:                                               ; preds = %1
  %77 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %78 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %133

81:                                               ; preds = %76
  %82 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %83 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 2
  br i1 %85, label %86, label %103

86:                                               ; preds = %81
  %87 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %88 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, -2
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %94 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %97 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %100 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @netdev_err(%struct.net_device* %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %91, %86, %81
  %104 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %105 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %104, i32 0, i32 2
  store i32 0, i32* %105, align 8
  %106 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %107 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %103
  %111 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %112 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %111, i32 0, i32 3
  store i32 1, i32* %112, align 4
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %115 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %118 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @NS8390_trigger_send(%struct.net_device* %113, i32 %116, i64 %119)
  %121 = load %struct.net_device*, %struct.net_device** %2, align 8
  %122 = call i32 @netif_trans_update(%struct.net_device* %121)
  %123 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %124 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %123, i32 0, i32 0
  store i32 -1, i32* %124, align 8
  %125 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %126 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  br label %132

127:                                              ; preds = %103
  %128 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %129 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %128, i32 0, i32 1
  store i32 10, i32* %129, align 4
  %130 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %131 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %130, i32 0, i32 3
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %127, %110
  br label %133

133:                                              ; preds = %132, %76
  br label %134

134:                                              ; preds = %133, %75
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @ENTSR_COL, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load %struct.net_device*, %struct.net_device** %2, align 8
  %141 = getelementptr inbounds %struct.net_device, %struct.net_device* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %142, align 8
  br label %145

145:                                              ; preds = %139, %134
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @ENTSR_PTX, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.net_device*, %struct.net_device** %2, align 8
  %152 = getelementptr inbounds %struct.net_device, %struct.net_device* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  br label %222

156:                                              ; preds = %145
  %157 = load %struct.net_device*, %struct.net_device** %2, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @ENTSR_ABT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %156
  %167 = load %struct.net_device*, %struct.net_device** %2, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 8
  %172 = load %struct.net_device*, %struct.net_device** %2, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, 16
  store i64 %176, i64* %174, align 8
  br label %177

177:                                              ; preds = %166, %156
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @ENTSR_CRS, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load %struct.net_device*, %struct.net_device** %2, align 8
  %184 = getelementptr inbounds %struct.net_device, %struct.net_device* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %182, %177
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* @ENTSR_FU, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = load %struct.net_device*, %struct.net_device** %2, align 8
  %195 = getelementptr inbounds %struct.net_device, %struct.net_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %193, %188
  %200 = load i32, i32* %5, align 4
  %201 = load i32, i32* @ENTSR_CDH, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load %struct.net_device*, %struct.net_device** %2, align 8
  %206 = getelementptr inbounds %struct.net_device, %struct.net_device* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %204, %199
  %211 = load i32, i32* %5, align 4
  %212 = load i32, i32* @ENTSR_OWC, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %210
  %216 = load %struct.net_device*, %struct.net_device** %2, align 8
  %217 = getelementptr inbounds %struct.net_device, %struct.net_device* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %215, %210
  br label %222

222:                                              ; preds = %221, %150
  %223 = load %struct.net_device*, %struct.net_device** %2, align 8
  %224 = call i32 @netif_wake_queue(%struct.net_device* %223)
  ret void
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @NS8390_trigger_send(%struct.net_device*, i32, i64) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
