; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i32, i32, i64 }
%struct.qede_dev = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@NETIF_MSG_IFDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"set-channels command parameters: rx = %d, tx = %d, other = %d, combined = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"command parameters not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"need to request at least one transmit and one receive channel\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"requested channels = %d max supported channels = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"No change in active parameters\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Number of channels must be divisible by %04x\0A\00", align 1
@QEDE_RSS_INDIR_INITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_channels*)* @qede_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_set_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  %6 = alloca %struct.qede_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %8)
  store %struct.qede_dev* %9, %struct.qede_dev** %6, align 8
  %10 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %11 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %12 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (%struct.qede_dev*, i32, i8*, ...) @DP_VERBOSE(%struct.qede_dev* %10, i32 %13, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i64 %22, i32 %25)
  %27 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %2
  %43 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %44 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %45 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %46 = or i32 %44, %45
  %47 = call i32 (%struct.qede_dev*, i32, i8*, ...) @DP_VERBOSE(%struct.qede_dev* %43, i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %199

50:                                               ; preds = %2
  %51 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %50
  %56 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %67 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %68 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %69 = or i32 %67, %68
  %70 = call i32 (%struct.qede_dev*, i32, i8*, ...) @DP_VERBOSE(%struct.qede_dev* %66, i32 %69, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %199

73:                                               ; preds = %60, %50
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %76 = call i32 @QEDE_MAX_RSS_CNT(%struct.qede_dev* %75)
  %77 = icmp sgt i32 %74, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %80 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %81 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %85 = call i32 @QEDE_MAX_RSS_CNT(%struct.qede_dev* %84)
  %86 = call i32 (%struct.qede_dev*, i32, i8*, ...) @DP_VERBOSE(%struct.qede_dev* %79, i32 %82, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %199

89:                                               ; preds = %73
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %92 = call i32 @QEDE_QUEUE_CNT(%struct.qede_dev* %91)
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %89
  %95 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %96 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %99 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %94
  %103 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %104 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %107 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %105, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %112 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %113 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %114 = or i32 %112, %113
  %115 = call i32 (%struct.qede_dev*, i32, i8*, ...) @DP_VERBOSE(%struct.qede_dev* %111, i32 %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %199

116:                                              ; preds = %102, %94, %89
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %119 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = srem i32 %117, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %147, label %125

125:                                              ; preds = %116
  %126 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %127 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %130 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = srem i32 %128, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %147, label %136

136:                                              ; preds = %125
  %137 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %138 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %141 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %140, i32 0, i32 7
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = srem i32 %139, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %136, %125, %116
  %148 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %149 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %150 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %153 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (%struct.qede_dev*, i32, i8*, ...) @DP_VERBOSE(%struct.qede_dev* %148, i32 %151, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %199

160:                                              ; preds = %136
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %163 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  %164 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %165 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %168 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  %169 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %170 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %173 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 4
  %174 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %175 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %178 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %176, %179
  %181 = sext i32 %180 to i64
  %182 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %183 = call i64 @QEDE_RSS_COUNT(%struct.qede_dev* %182)
  %184 = icmp ne i64 %181, %183
  br i1 %184, label %185, label %196

185:                                              ; preds = %160
  %186 = load i32, i32* @QEDE_RSS_INDIR_INITED, align 4
  %187 = xor i32 %186, -1
  %188 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %189 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %193 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @memset(i32 %194, i32 0, i32 4)
  br label %196

196:                                              ; preds = %185, %160
  %197 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %198 = call i32 @qede_reload(%struct.qede_dev* %197, i32* null, i32 0)
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %196, %147, %110, %78, %65, %42
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, ...) #1

declare dso_local i32 @QEDE_MAX_RSS_CNT(%struct.qede_dev*) #1

declare dso_local i32 @QEDE_QUEUE_CNT(%struct.qede_dev*) #1

declare dso_local i64 @QEDE_RSS_COUNT(%struct.qede_dev*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @qede_reload(%struct.qede_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
