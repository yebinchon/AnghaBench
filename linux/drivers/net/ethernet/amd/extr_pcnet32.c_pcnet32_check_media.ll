; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_check_media.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_check_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pcnet32_private = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_5__, i64, i64, i32 }
%struct.TYPE_4__ = type { i32 (i32, i32)*, i32 (i32, i32, i32)* }
%struct.TYPE_5__ = type { i32 }
%struct.ethtool_cmd = type { i64, i32 }

@PCNET32_79C970A = common dso_local global i64 0, align 8
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@ETHTOOL_GSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"link up, %uMbps, %s-duplex\0A\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"link up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @pcnet32_check_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcnet32_check_media(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcnet32_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ethtool_cmd, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %12)
  store %struct.pcnet32_private* %13, %struct.pcnet32_private** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i64 @netif_carrier_ok(%struct.net_device* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %7, align 4
  %19 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %20 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %25 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %24, i32 0, i32 3
  %26 = call i32 @mii_link_ok(%struct.TYPE_5__* %25)
  store i32 %26, i32* %6, align 4
  br label %72

27:                                               ; preds = %2
  %28 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %29 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCNET32_79C970A, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %38 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %33
  %42 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %43 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %48 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32 (i32, i32)*, i32 (i32, i32)** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 %51(i32 %52, i32 4)
  %54 = icmp ne i32 %53, 192
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %6, align 4
  br label %57

56:                                               ; preds = %41, %33
  store i32 1, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %46
  br label %71

58:                                               ; preds = %27
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  %62 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %63 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32 (i32, i32)*, i32 (i32, i32)** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 %66(i32 %67, i32 4)
  %69 = icmp ne i32 %68, 192
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %58, %57
  br label %72

72:                                               ; preds = %71, %23
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %97, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78, %75
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = call i32 @netif_carrier_off(%struct.net_device* %82)
  %84 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %85 = load i32, i32* @link, align 4
  %86 = load %struct.net_device*, %struct.net_device** %3, align 8
  %87 = call i32 @netif_info(%struct.pcnet32_private* %84, i32 %85, %struct.net_device* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %88

88:                                               ; preds = %81, %78
  %89 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %90 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %91, 1
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.net_device*, %struct.net_device** %3, align 8
  %95 = call i32 @pcnet32_check_otherphy(%struct.net_device* %94)
  store i32 %95, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %93, %88
  br label %178

97:                                               ; preds = %72
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %177, label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.net_device*, %struct.net_device** %3, align 8
  %105 = call i32 @netif_carrier_on(%struct.net_device* %104)
  %106 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %107 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %171

110:                                              ; preds = %103
  %111 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %112 = call i64 @netif_msg_link(%struct.pcnet32_private* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %11, i32 0, i32 0
  store i64 0, i64* %115, align 8
  %116 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %11, i32 0, i32 1
  %117 = load i32, i32* @ETHTOOL_GSET, align 4
  store i32 %117, i32* %116, align 8
  %118 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %119 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %118, i32 0, i32 3
  %120 = call i32 @mii_ethtool_gset(%struct.TYPE_5__* %119, %struct.ethtool_cmd* %11)
  %121 = load %struct.net_device*, %struct.net_device** %3, align 8
  %122 = call i32 @ethtool_cmd_speed(%struct.ethtool_cmd* %11)
  %123 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %11, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @DUPLEX_FULL, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %129 = call i32 @netdev_info(%struct.net_device* %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %122, i8* %128)
  br label %130

130:                                              ; preds = %114, %110
  %131 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %132 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %131, i32 0, i32 2
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32 (i32, i32)*, i32 (i32, i32)** %134, align 8
  %136 = load %struct.net_device*, %struct.net_device** %3, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 %135(i32 %138, i32 9)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = and i32 %140, 1
  %142 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %143 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %141, %145
  br i1 %146, label %147, label %170

147:                                              ; preds = %130
  %148 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %149 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load i32, i32* %8, align 4
  %155 = or i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %159

156:                                              ; preds = %147
  %157 = load i32, i32* %8, align 4
  %158 = and i32 %157, -2
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %156, %153
  %160 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %161 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %160, i32 0, i32 2
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %163, align 8
  %165 = load %struct.net_device*, %struct.net_device** %3, align 8
  %166 = getelementptr inbounds %struct.net_device, %struct.net_device* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %8, align 4
  %169 = call i32 %164(i32 %167, i32 9, i32 %168)
  br label %170

170:                                              ; preds = %159, %130
  br label %176

171:                                              ; preds = %103
  %172 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %173 = load i32, i32* @link, align 4
  %174 = load %struct.net_device*, %struct.net_device** %3, align 8
  %175 = call i32 @netif_info(%struct.pcnet32_private* %172, i32 %173, %struct.net_device* %174, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %176

176:                                              ; preds = %171, %170
  br label %177

177:                                              ; preds = %176, %100
  br label %178

178:                                              ; preds = %177, %96
  ret void
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @mii_link_ok(%struct.TYPE_5__*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.pcnet32_private*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @pcnet32_check_otherphy(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i64 @netif_msg_link(%struct.pcnet32_private*) #1

declare dso_local i32 @mii_ethtool_gset(%struct.TYPE_5__*, %struct.ethtool_cmd*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i8*) #1

declare dso_local i32 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
