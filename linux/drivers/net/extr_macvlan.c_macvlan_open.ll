; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32*)*, i32* (%struct.net_device*, %struct.net_device*)* }
%struct.macvlan_dev = type { i32, i32*, i32, %struct.net_device* }

@MACVLAN_FLAG_NOPROMISC = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@NETIF_F_HW_L2FW_DOFFLOAD = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @macvlan_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.macvlan_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %7)
  store %struct.macvlan_dev* %8, %struct.macvlan_dev** %4, align 8
  %9 = load %struct.macvlan_dev*, %struct.macvlan_dev** %4, align 8
  %10 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %9, i32 0, i32 3
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.macvlan_dev*, %struct.macvlan_dev** %4, align 8
  %13 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @macvlan_passthru(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.macvlan_dev*, %struct.macvlan_dev** %4, align 8
  %19 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MACVLAN_FLAG_NOPROMISC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i32 @dev_set_promiscuity(%struct.net_device* %25, i32 1)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %148

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %17
  br label %109

32:                                               ; preds = %1
  %33 = load i32, i32* @EADDRINUSE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.macvlan_dev*, %struct.macvlan_dev** %4, align 8
  %36 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @macvlan_addr_busy(i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %148

44:                                               ; preds = %32
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NETIF_F_HW_L2FW_DOFFLOAD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32* (%struct.net_device*, %struct.net_device*)*, i32* (%struct.net_device*, %struct.net_device*)** %55, align 8
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32* %56(%struct.net_device* %57, %struct.net_device* %58)
  %60 = load %struct.macvlan_dev*, %struct.macvlan_dev** %4, align 8
  %61 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  br label %62

62:                                               ; preds = %51, %44
  %63 = load %struct.macvlan_dev*, %struct.macvlan_dev** %4, align 8
  %64 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @IS_ERR_OR_NULL(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load %struct.macvlan_dev*, %struct.macvlan_dev** %4, align 8
  %70 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %69, i32 0, i32 1
  store i32* null, i32** %70, align 8
  %71 = load %struct.net_device*, %struct.net_device** %5, align 8
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_uc_add(%struct.net_device* %71, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %148

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %62
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IFF_ALLMULTI, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = call i32 @dev_set_allmulti(%struct.net_device* %88, i32 1)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %123

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %80
  %95 = load %struct.net_device*, %struct.net_device** %3, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IFF_PROMISC, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %94
  %102 = load %struct.net_device*, %struct.net_device** %5, align 8
  %103 = call i32 @dev_set_promiscuity(%struct.net_device* %102, i32 1)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %112

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %94
  br label %109

109:                                              ; preds = %108, %31
  %110 = load %struct.macvlan_dev*, %struct.macvlan_dev** %4, align 8
  %111 = call i32 @macvlan_hash_add(%struct.macvlan_dev* %110)
  store i32 0, i32* %2, align 4
  br label %150

112:                                              ; preds = %106
  %113 = load %struct.net_device*, %struct.net_device** %3, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IFF_ALLMULTI, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load %struct.net_device*, %struct.net_device** %5, align 8
  %121 = call i32 @dev_set_allmulti(%struct.net_device* %120, i32 -1)
  br label %122

122:                                              ; preds = %119, %112
  br label %123

123:                                              ; preds = %122, %92
  %124 = load %struct.macvlan_dev*, %struct.macvlan_dev** %4, align 8
  %125 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %141

128:                                              ; preds = %123
  %129 = load %struct.net_device*, %struct.net_device** %5, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 3
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32 (%struct.net_device*, i32*)*, i32 (%struct.net_device*, i32*)** %132, align 8
  %134 = load %struct.net_device*, %struct.net_device** %5, align 8
  %135 = load %struct.macvlan_dev*, %struct.macvlan_dev** %4, align 8
  %136 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 %133(%struct.net_device* %134, i32* %137)
  %139 = load %struct.macvlan_dev*, %struct.macvlan_dev** %4, align 8
  %140 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %139, i32 0, i32 1
  store i32* null, i32** %140, align 8
  br label %147

141:                                              ; preds = %123
  %142 = load %struct.net_device*, %struct.net_device** %5, align 8
  %143 = load %struct.net_device*, %struct.net_device** %3, align 8
  %144 = getelementptr inbounds %struct.net_device, %struct.net_device* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @dev_uc_del(%struct.net_device* %142, i32 %145)
  br label %147

147:                                              ; preds = %141, %128
  br label %148

148:                                              ; preds = %147, %78, %43, %29
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %148, %109
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @macvlan_passthru(i32) #1

declare dso_local i32 @dev_set_promiscuity(%struct.net_device*, i32) #1

declare dso_local i64 @macvlan_addr_busy(i32, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @dev_uc_add(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_allmulti(%struct.net_device*, i32) #1

declare dso_local i32 @macvlan_hash_add(%struct.macvlan_dev*) #1

declare dso_local i32 @dev_uc_del(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
