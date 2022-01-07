; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8*, i32, i32*, i32*, i32 }
%struct.tlan_priv = type { i64, i32, %struct.TYPE_2__*, i64, i64, %struct.tlan_list*, %struct.tlan_list*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tlan_list = type { i32 }

@TLAN_NUM_RX_LISTS = common dso_local global i32 0, align 4
@TLAN_NUM_TX_LISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Could not allocate lists and buffers for %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: Error reading MAC from eeprom: %d\0A\00", align 1
@tlan_netdev_ops = common dso_local global i32 0, align 4
@tlan_ethtool_ops = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @tlan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlan_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tlan_priv*, align 8
  %8 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.tlan_priv* %10, %struct.tlan_priv** %7, align 8
  %11 = load i32, i32* @TLAN_NUM_RX_LISTS, align 4
  %12 = load i32, i32* @TLAN_NUM_TX_LISTS, align 4
  %13 = add nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load %struct.tlan_priv*, %struct.tlan_priv** %7, align 8
  %18 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.tlan_priv*, %struct.tlan_priv** %7, align 8
  %22 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %21, i32 0, i32 0
  %23 = call i32* @pci_alloc_consistent(i32 %19, i32 %20, i64* %22)
  %24 = load %struct.tlan_priv*, %struct.tlan_priv** %7, align 8
  %25 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %24, i32 0, i32 7
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.tlan_priv*, %struct.tlan_priv** %7, align 8
  %28 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.tlan_priv*, %struct.tlan_priv** %7, align 8
  %30 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %165

40:                                               ; preds = %1
  %41 = load %struct.tlan_priv*, %struct.tlan_priv** %7, align 8
  %42 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %41, i32 0, i32 7
  %43 = load i32*, i32** %42, align 8
  %44 = ptrtoint i32* %43 to i64
  %45 = call i64 @ALIGN(i64 %44, i32 8)
  %46 = inttoptr i64 %45 to %struct.tlan_list*
  %47 = load %struct.tlan_priv*, %struct.tlan_priv** %7, align 8
  %48 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %47, i32 0, i32 5
  store %struct.tlan_list* %46, %struct.tlan_list** %48, align 8
  %49 = load %struct.tlan_priv*, %struct.tlan_priv** %7, align 8
  %50 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @ALIGN(i64 %51, i32 8)
  %53 = load %struct.tlan_priv*, %struct.tlan_priv** %7, align 8
  %54 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load %struct.tlan_priv*, %struct.tlan_priv** %7, align 8
  %56 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %55, i32 0, i32 5
  %57 = load %struct.tlan_list*, %struct.tlan_list** %56, align 8
  %58 = load i32, i32* @TLAN_NUM_RX_LISTS, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.tlan_list, %struct.tlan_list* %57, i64 %59
  %61 = load %struct.tlan_priv*, %struct.tlan_priv** %7, align 8
  %62 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %61, i32 0, i32 6
  store %struct.tlan_list* %60, %struct.tlan_list** %62, align 8
  %63 = load %struct.tlan_priv*, %struct.tlan_priv** %7, align 8
  %64 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @TLAN_NUM_RX_LISTS, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 4, %67
  %69 = add i64 %65, %68
  %70 = load %struct.tlan_priv*, %struct.tlan_priv** %7, align 8
  %71 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %70, i32 0, i32 4
  store i64 %69, i64* %71, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %97, %40
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @ETH_ALEN, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %72
  %77 = load %struct.net_device*, %struct.net_device** %3, align 8
  %78 = load %struct.tlan_priv*, %struct.tlan_priv** %7, align 8
  %79 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = load %struct.net_device*, %struct.net_device** %3, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = bitcast i8* %92 to i64*
  %94 = call i32 @tlan_ee_read_byte(%struct.net_device* %77, i64 %86, i64* %93)
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %76
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %72

100:                                              ; preds = %72
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.net_device*, %struct.net_device** %3, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %103, %100
  %110 = load %struct.tlan_priv*, %struct.tlan_priv** %7, align 8
  %111 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 248
  br i1 %115, label %116, label %155

116:                                              ; preds = %109
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %151, %116
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @ETH_ALEN, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %154

121:                                              ; preds = %117
  %122 = load %struct.net_device*, %struct.net_device** %3, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  store i8 %128, i8* %8, align 1
  %129 = load %struct.net_device*, %struct.net_device** %3, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %131, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = load %struct.net_device*, %struct.net_device** %3, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  store i8 %136, i8* %142, align 1
  %143 = load i8, i8* %8, align 1
  %144 = load %struct.net_device*, %struct.net_device** %3, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  store i8 %143, i8* %150, align 1
  br label %151

151:                                              ; preds = %121
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 2
  store i32 %153, i32* %6, align 4
  br label %117

154:                                              ; preds = %117
  br label %155

155:                                              ; preds = %154, %109
  %156 = load %struct.net_device*, %struct.net_device** %3, align 8
  %157 = call i32 @netif_carrier_off(%struct.net_device* %156)
  %158 = load %struct.net_device*, %struct.net_device** %3, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 3
  store i32* @tlan_netdev_ops, i32** %159, align 8
  %160 = load %struct.net_device*, %struct.net_device** %3, align 8
  %161 = getelementptr inbounds %struct.net_device, %struct.net_device* %160, i32 0, i32 2
  store i32* @tlan_ethtool_ops, i32** %161, align 8
  %162 = load i32, i32* @TX_TIMEOUT, align 4
  %163 = load %struct.net_device*, %struct.net_device** %3, align 8
  %164 = getelementptr inbounds %struct.net_device, %struct.net_device* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 8
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %155, %33
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @tlan_ee_read_byte(%struct.net_device*, i64, i64*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
