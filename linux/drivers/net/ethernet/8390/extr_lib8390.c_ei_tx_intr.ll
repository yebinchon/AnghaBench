; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_lib8390.c_ei_tx_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_lib8390.c_ei_tx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.ei_device = type { i32, i32, i32, i32, i64, i32, i32 }

@EN0_TSR = common dso_local global i64 0, align 8
@ENISR_TX = common dso_local global i32 0, align 4
@EN0_ISR = common dso_local global i64 0, align 8
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
  %13 = add i64 %11, %12
  %14 = call i32 @ei_inb(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @ENISR_TX, align 4
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @EN0_ISR, align 8
  %18 = add i64 %16, %17
  %19 = call i32 @ei_outb_p(i32 %15, i64 %18)
  %20 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %21 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %25 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %80

28:                                               ; preds = %1
  %29 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %30 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %35 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %40 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %43 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %46 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %38, %33, %28
  %50 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %51 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %53 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %49
  %57 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %58 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %57, i32 0, i32 3
  store i32 1, i32* %58, align 4
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %61 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %64 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 6
  %67 = call i32 @NS8390_trigger_send(%struct.net_device* %59, i32 %62, i64 %66)
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = call i32 @netif_trans_update(%struct.net_device* %68)
  %70 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %71 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %70, i32 0, i32 2
  store i32 -1, i32* %71, align 8
  %72 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %73 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %72, i32 0, i32 1
  store i32 2, i32* %73, align 4
  br label %79

74:                                               ; preds = %49
  %75 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %76 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %75, i32 0, i32 1
  store i32 20, i32* %76, align 4
  %77 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %78 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %77, i32 0, i32 3
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %56
  br label %137

80:                                               ; preds = %1
  %81 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %82 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %136

85:                                               ; preds = %80
  %86 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %87 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 2
  br i1 %89, label %90, label %106

90:                                               ; preds = %85
  %91 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %92 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, -2
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %97 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %100 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %103 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %95, %90, %85
  %107 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %108 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %107, i32 0, i32 2
  store i32 0, i32* %108, align 8
  %109 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %110 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %106
  %114 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %115 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %114, i32 0, i32 3
  store i32 1, i32* %115, align 4
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %118 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %121 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @NS8390_trigger_send(%struct.net_device* %116, i32 %119, i64 %122)
  %124 = load %struct.net_device*, %struct.net_device** %2, align 8
  %125 = call i32 @netif_trans_update(%struct.net_device* %124)
  %126 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %127 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %126, i32 0, i32 0
  store i32 -1, i32* %127, align 8
  %128 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %129 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %128, i32 0, i32 1
  store i32 1, i32* %129, align 4
  br label %135

130:                                              ; preds = %106
  %131 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %132 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %131, i32 0, i32 1
  store i32 10, i32* %132, align 4
  %133 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %134 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %133, i32 0, i32 3
  store i32 0, i32* %134, align 4
  br label %135

135:                                              ; preds = %130, %113
  br label %136

136:                                              ; preds = %135, %80
  br label %137

137:                                              ; preds = %136, %79
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @ENTSR_COL, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.net_device*, %struct.net_device** %2, align 8
  %144 = getelementptr inbounds %struct.net_device, %struct.net_device* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %145, align 8
  br label %148

148:                                              ; preds = %142, %137
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @ENTSR_PTX, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load %struct.net_device*, %struct.net_device** %2, align 8
  %155 = getelementptr inbounds %struct.net_device, %struct.net_device* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  br label %225

159:                                              ; preds = %148
  %160 = load %struct.net_device*, %struct.net_device** %2, align 8
  %161 = getelementptr inbounds %struct.net_device, %struct.net_device* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @ENTSR_ABT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %159
  %170 = load %struct.net_device*, %struct.net_device** %2, align 8
  %171 = getelementptr inbounds %struct.net_device, %struct.net_device* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 8
  %175 = load %struct.net_device*, %struct.net_device** %2, align 8
  %176 = getelementptr inbounds %struct.net_device, %struct.net_device* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, 16
  store i64 %179, i64* %177, align 8
  br label %180

180:                                              ; preds = %169, %159
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* @ENTSR_CRS, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load %struct.net_device*, %struct.net_device** %2, align 8
  %187 = getelementptr inbounds %struct.net_device, %struct.net_device* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %185, %180
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* @ENTSR_FU, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load %struct.net_device*, %struct.net_device** %2, align 8
  %198 = getelementptr inbounds %struct.net_device, %struct.net_device* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %196, %191
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* @ENTSR_CDH, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %202
  %208 = load %struct.net_device*, %struct.net_device** %2, align 8
  %209 = getelementptr inbounds %struct.net_device, %struct.net_device* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %207, %202
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @ENTSR_OWC, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = load %struct.net_device*, %struct.net_device** %2, align 8
  %220 = getelementptr inbounds %struct.net_device, %struct.net_device* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 8
  br label %224

224:                                              ; preds = %218, %213
  br label %225

225:                                              ; preds = %224, %153
  %226 = load %struct.net_device*, %struct.net_device** %2, align 8
  %227 = call i32 @netif_wake_queue(%struct.net_device* %226)
  ret void
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ei_inb(i64) #1

declare dso_local i32 @ei_outb_p(i32, i64) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @NS8390_trigger_send(%struct.net_device*, i32, i64) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
