; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_7990.c_lance_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_7990.c_lance_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.lance_private = type { i32, i32, i32, i64, i64, %struct.lance_init_block* }
%struct.lance_init_block = type { %struct.lance_tx_desc* }
%struct.lance_tx_desc = type { i32, i32 }

@LE_C0_TINT = common dso_local global i32 0, align 4
@LE_C0_INEA = common dso_local global i32 0, align 4
@LE_T1_OWN = common dso_local global i32 0, align 4
@LE_T1_ERR = common dso_local global i32 0, align 4
@LE_T3_RTY = common dso_local global i32 0, align 4
@LE_T3_LCOL = common dso_local global i32 0, align 4
@LE_T3_CLOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: Carrier Lost, trying %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TPE\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"AUI\00", align 1
@LE_CSR0 = common dso_local global i32 0, align 4
@LE_C0_STOP = common dso_local global i32 0, align 4
@LE_T3_BUF = common dso_local global i32 0, align 4
@LE_T3_UFL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"%s: Tx: ERR_BUF|ERR_UFL, restarting\0A\00", align 1
@LE_T1_POK = common dso_local global i32 0, align 4
@LE_T1_EONE = common dso_local global i32 0, align 4
@LE_T1_EMORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lance_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lance_tx(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.lance_private*, align 8
  %5 = alloca %struct.lance_init_block*, align 8
  %6 = alloca %struct.lance_tx_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.lance_private* @netdev_priv(%struct.net_device* %10)
  store %struct.lance_private* %11, %struct.lance_private** %4, align 8
  %12 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %13 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %12, i32 0, i32 5
  %14 = load %struct.lance_init_block*, %struct.lance_init_block** %13, align 8
  store %struct.lance_init_block* %14, %struct.lance_init_block** %5, align 8
  %15 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %16 = load i32, i32* @LE_C0_TINT, align 4
  %17 = load i32, i32* @LE_C0_INEA, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @WRITERDP(%struct.lance_private* %15, i32 %18)
  %20 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %21 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %210, %1
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %27 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %212

30:                                               ; preds = %24
  %31 = load %struct.lance_init_block*, %struct.lance_init_block** %5, align 8
  %32 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %31, i32 0, i32 0
  %33 = load volatile %struct.lance_tx_desc*, %struct.lance_tx_desc** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.lance_tx_desc, %struct.lance_tx_desc* %33, i64 %35
  store %struct.lance_tx_desc* %36, %struct.lance_tx_desc** %6, align 8
  %37 = load %struct.lance_tx_desc*, %struct.lance_tx_desc** %6, align 8
  %38 = getelementptr inbounds %struct.lance_tx_desc, %struct.lance_tx_desc* %37, i32 0, i32 0
  %39 = load volatile i32, i32* %38, align 4
  %40 = load i32, i32* @LE_T1_OWN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %212

44:                                               ; preds = %30
  %45 = load %struct.lance_tx_desc*, %struct.lance_tx_desc** %6, align 8
  %46 = getelementptr inbounds %struct.lance_tx_desc, %struct.lance_tx_desc* %45, i32 0, i32 0
  %47 = load volatile i32, i32* %46, align 4
  %48 = load i32, i32* @LE_T1_ERR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %156

51:                                               ; preds = %44
  %52 = load %struct.lance_tx_desc*, %struct.lance_tx_desc** %6, align 8
  %53 = getelementptr inbounds %struct.lance_tx_desc, %struct.lance_tx_desc* %52, i32 0, i32 1
  %54 = load volatile i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @LE_T3_RTY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %51
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %51
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @LE_T3_LCOL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @LE_T3_CLOS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %126

86:                                               ; preds = %81
  %87 = load %struct.net_device*, %struct.net_device** %3, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %93 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %125

96:                                               ; preds = %86
  %97 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %98 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 1, %99
  %101 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %102 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %101, i32 0, i32 3
  store i64 %100, i64* %102, align 8
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %107 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %112 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %105, i8* %111)
  %113 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %114 = load i32, i32* @LE_CSR0, align 4
  %115 = call i32 @WRITERAP(%struct.lance_private* %113, i32 %114)
  %116 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %117 = load i32, i32* @LE_C0_STOP, align 4
  %118 = call i32 @WRITERDP(%struct.lance_private* %116, i32 %117)
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = call i32 @lance_init_ring(%struct.net_device* %119)
  %121 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %122 = call i32 @load_csrs(%struct.lance_private* %121)
  %123 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %124 = call i32 @init_restart_lance(%struct.lance_private* %123)
  store i32 0, i32* %2, align 4
  br label %221

125:                                              ; preds = %86
  br label %126

126:                                              ; preds = %125, %81
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @LE_T3_BUF, align 4
  %129 = load i32, i32* @LE_T3_UFL, align 4
  %130 = or i32 %128, %129
  %131 = and i32 %127, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %155

133:                                              ; preds = %126
  %134 = load %struct.net_device*, %struct.net_device** %3, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = load %struct.net_device*, %struct.net_device** %3, align 8
  %140 = getelementptr inbounds %struct.net_device, %struct.net_device* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %144 = load i32, i32* @LE_CSR0, align 4
  %145 = call i32 @WRITERAP(%struct.lance_private* %143, i32 %144)
  %146 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %147 = load i32, i32* @LE_C0_STOP, align 4
  %148 = call i32 @WRITERDP(%struct.lance_private* %146, i32 %147)
  %149 = load %struct.net_device*, %struct.net_device** %3, align 8
  %150 = call i32 @lance_init_ring(%struct.net_device* %149)
  %151 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %152 = call i32 @load_csrs(%struct.lance_private* %151)
  %153 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %154 = call i32 @init_restart_lance(%struct.lance_private* %153)
  store i32 0, i32* %2, align 4
  br label %221

155:                                              ; preds = %126
  br label %203

156:                                              ; preds = %44
  %157 = load %struct.lance_tx_desc*, %struct.lance_tx_desc** %6, align 8
  %158 = getelementptr inbounds %struct.lance_tx_desc, %struct.lance_tx_desc* %157, i32 0, i32 0
  %159 = load volatile i32, i32* %158, align 4
  %160 = load i32, i32* @LE_T1_POK, align 4
  %161 = and i32 %159, %160
  %162 = load i32, i32* @LE_T1_POK, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %202

164:                                              ; preds = %156
  %165 = load i32, i32* @LE_T1_POK, align 4
  %166 = xor i32 %165, -1
  %167 = load %struct.lance_tx_desc*, %struct.lance_tx_desc** %6, align 8
  %168 = getelementptr inbounds %struct.lance_tx_desc, %struct.lance_tx_desc* %167, i32 0, i32 0
  %169 = load volatile i32, i32* %168, align 4
  %170 = and i32 %169, %166
  store volatile i32 %170, i32* %168, align 4
  %171 = load %struct.lance_tx_desc*, %struct.lance_tx_desc** %6, align 8
  %172 = getelementptr inbounds %struct.lance_tx_desc, %struct.lance_tx_desc* %171, i32 0, i32 0
  %173 = load volatile i32, i32* %172, align 4
  %174 = load i32, i32* @LE_T1_EONE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %164
  %178 = load %struct.net_device*, %struct.net_device** %3, align 8
  %179 = getelementptr inbounds %struct.net_device, %struct.net_device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, 1
  store i64 %182, i64* %180, align 8
  br label %183

183:                                              ; preds = %177, %164
  %184 = load %struct.lance_tx_desc*, %struct.lance_tx_desc** %6, align 8
  %185 = getelementptr inbounds %struct.lance_tx_desc, %struct.lance_tx_desc* %184, i32 0, i32 0
  %186 = load volatile i32, i32* %185, align 4
  %187 = load i32, i32* @LE_T1_EMORE, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %183
  %191 = load %struct.net_device*, %struct.net_device** %3, align 8
  %192 = getelementptr inbounds %struct.net_device, %struct.net_device* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, 2
  store i64 %195, i64* %193, align 8
  br label %196

196:                                              ; preds = %190, %183
  %197 = load %struct.net_device*, %struct.net_device** %3, align 8
  %198 = getelementptr inbounds %struct.net_device, %struct.net_device* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %196, %156
  br label %203

203:                                              ; preds = %202, %155
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  %206 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %207 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %205, %208
  store i32 %209, i32* %8, align 4
  br label %210

210:                                              ; preds = %203
  %211 = load i32, i32* %8, align 4
  store i32 %211, i32* %7, align 4
  br label %24

212:                                              ; preds = %43, %24
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %215 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %217 = load i32, i32* @LE_C0_TINT, align 4
  %218 = load i32, i32* @LE_C0_INEA, align 4
  %219 = or i32 %217, %218
  %220 = call i32 @WRITERDP(%struct.lance_private* %216, i32 %219)
  store i32 0, i32* %2, align 4
  br label %221

221:                                              ; preds = %212, %133, %96
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @WRITERDP(%struct.lance_private*, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @WRITERAP(%struct.lance_private*, i32) #1

declare dso_local i32 @lance_init_ring(%struct.net_device*) #1

declare dso_local i32 @load_csrs(%struct.lance_private*) #1

declare dso_local i32 @init_restart_lance(%struct.lance_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
