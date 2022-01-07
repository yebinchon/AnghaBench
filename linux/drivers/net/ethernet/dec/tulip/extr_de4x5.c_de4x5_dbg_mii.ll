; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_dbg_mii.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_dbg_mii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@de4x5_debug = common dso_local global i32 0, align 4
@DEBUG_MII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"\0AMII device address: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"MII CR:  %x\0A\00", align 1
@MII_CR = common dso_local global i32 0, align 4
@DE4X5_MII = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"MII SR:  %x\0A\00", align 1
@MII_SR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"MII ID0: %x\0A\00", align 1
@MII_ID0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"MII ID1: %x\0A\00", align 1
@MII_ID1 = common dso_local global i32 0, align 4
@BROADCOM_T4 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"MII ANA: %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"MII ANC: %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"MII 16:  %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"MII 17:  %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"MII 18:  %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"MII 20:  %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @de4x5_dbg_mii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de4x5_dbg_mii(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.de4x5_private*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %7)
  store %struct.de4x5_private* %8, %struct.de4x5_private** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @de4x5_debug, align 4
  %13 = load i32, i32* @DEBUG_MII, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %165

16:                                               ; preds = %2
  %17 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %18 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @MII_CR, align 4
  %27 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %28 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @DE4X5_MII, align 4
  %36 = call i32 @mii_rd(i32 %26, i32 %34, i32 %35)
  %37 = call i32 @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @MII_SR, align 4
  %39 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %40 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DE4X5_MII, align 4
  %48 = call i32 @mii_rd(i32 %38, i32 %46, i32 %47)
  %49 = call i32 @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @MII_ID0, align 4
  %51 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %52 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @DE4X5_MII, align 4
  %60 = call i32 @mii_rd(i32 %50, i32 %58, i32 %59)
  %61 = call i32 @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @MII_ID1, align 4
  %63 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %64 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @DE4X5_MII, align 4
  %72 = call i32 @mii_rd(i32 %62, i32 %70, i32 %71)
  %73 = call i32 @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %75 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @BROADCOM_T4, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %16
  %85 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %86 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @DE4X5_MII, align 4
  %94 = call i32 @mii_rd(i32 4, i32 %92, i32 %93)
  %95 = call i32 @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %97 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @DE4X5_MII, align 4
  %105 = call i32 @mii_rd(i32 5, i32 %103, i32 %104)
  %106 = call i32 @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %84, %16
  %108 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %109 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @DE4X5_MII, align 4
  %117 = call i32 @mii_rd(i32 16, i32 %115, i32 %116)
  %118 = call i32 @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %117)
  %119 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %120 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @BROADCOM_T4, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %152

129:                                              ; preds = %107
  %130 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %131 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @DE4X5_MII, align 4
  %139 = call i32 @mii_rd(i32 17, i32 %137, i32 %138)
  %140 = call i32 @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %139)
  %141 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %142 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @DE4X5_MII, align 4
  %150 = call i32 @mii_rd(i32 18, i32 %148, i32 %149)
  %151 = call i32 @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %150)
  br label %164

152:                                              ; preds = %107
  %153 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %154 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @DE4X5_MII, align 4
  %162 = call i32 @mii_rd(i32 20, i32 %160, i32 %161)
  %163 = call i32 @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %152, %129
  br label %165

165:                                              ; preds = %164, %2
  ret void
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @mii_rd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
