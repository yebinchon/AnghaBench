; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i32, i32 }
%struct.au1000_private = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Speed (%d) is not 10/100 ???\0A\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@MAC_FULL_DUPLEX = common dso_local global i32 0, align 4
@MAC_DISABLE_RX_OWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"link up (%d/%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @au1000_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1000_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.au1000_private*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %8)
  store %struct.au1000_private* %9, %struct.au1000_private** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %14 = icmp ne %struct.phy_device* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %19 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %18, i32 0, i32 3
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %1
  %27 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %28 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %26
  %35 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %39 [
    i32 129, label %38
    i32 128, label %38
  ]

38:                                               ; preds = %34, %34
  br label %45

39:                                               ; preds = %34
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %42 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @netdev_warn(%struct.net_device* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %39, %38
  %46 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %47 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %50 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  store i32 1, i32* %7, align 4
  br label %51

51:                                               ; preds = %45, %26, %1
  %52 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %53 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %110

56:                                               ; preds = %51
  %57 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %58 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %61 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %110

64:                                               ; preds = %56
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = call i32 @au1000_hard_stop(%struct.net_device* %65)
  %67 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %68 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %67, i32 0, i32 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @readl(i32* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i64, i64* @DUPLEX_FULL, align 8
  %73 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %74 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp eq i64 %72, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %64
  %79 = load i32, i32* @MAC_FULL_DUPLEX, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @MAC_DISABLE_RX_OWN, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %6, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %6, align 4
  br label %94

86:                                               ; preds = %64
  %87 = load i32, i32* @MAC_FULL_DUPLEX, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* @MAC_DISABLE_RX_OWN, align 4
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %86, %78
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %97 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %96, i32 0, i32 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = call i32 @writel(i32 %95, i32* %99)
  %101 = call i32 (...) @wmb()
  %102 = call i32 @mdelay(i32 1)
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = call i32 @au1000_enable_rx_tx(%struct.net_device* %103)
  %105 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %106 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %109 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  store i32 1, i32* %7, align 4
  br label %110

110:                                              ; preds = %94, %56, %51
  %111 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %112 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %115 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %113, %116
  br i1 %117, label %118, label %134

118:                                              ; preds = %110
  %119 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %120 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %125 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %124, i32 0, i32 0
  store i32 0, i32* %125, align 8
  %126 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %127 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %126, i32 0, i32 1
  store i32 -1, i32* %127, align 4
  br label %128

128:                                              ; preds = %123, %118
  %129 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %130 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %133 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  store i32 1, i32* %7, align 4
  br label %134

134:                                              ; preds = %128, %110
  %135 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %136 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %135, i32 0, i32 3
  %137 = load i64, i64* %5, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %164

141:                                              ; preds = %134
  %142 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %143 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %141
  %147 = load %struct.net_device*, %struct.net_device** %2, align 8
  %148 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %149 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i64, i64* @DUPLEX_FULL, align 8
  %152 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %153 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = icmp eq i64 %151, %155
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %159 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %147, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %150, i8* %158)
  br label %163

160:                                              ; preds = %141
  %161 = load %struct.net_device*, %struct.net_device** %2, align 8
  %162 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %146
  br label %164

164:                                              ; preds = %163, %134
  ret void
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @au1000_hard_stop(%struct.net_device*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @au1000_enable_rx_tx(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
