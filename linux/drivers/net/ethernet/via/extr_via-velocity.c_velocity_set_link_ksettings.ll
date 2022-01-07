; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.velocity_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@VELOCITY_LINK_FAIL = common dso_local global i64 0, align 8
@VELOCITY_AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@VELOCITY_SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@VELOCITY_SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@VELOCITY_SPEED_10 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@VELOCITY_DUPLEX_FULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SPD_DPX_AUTO = common dso_local global i32 0, align 4
@SPD_DPX_1000_FULL = common dso_local global i32 0, align 4
@SPD_DPX_100_FULL = common dso_local global i32 0, align 4
@SPD_DPX_100_HALF = common dso_local global i32 0, align 4
@SPD_DPX_10_FULL = common dso_local global i32 0, align 4
@SPD_DPX_10_HALF = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @velocity_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.velocity_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.velocity_info* @netdev_priv(%struct.net_device* %12)
  store %struct.velocity_info* %13, %struct.velocity_info** %6, align 8
  %14 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %19 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @check_connection_type(i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* @VELOCITY_LINK_FAIL, align 8
  %23 = xor i64 %22, -1
  %24 = load i64, i64* %8, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %8, align 8
  %26 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i64, i64* @VELOCITY_AUTONEG_ENABLE, align 8
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i64 [ %32, %31 ], [ 0, %33 ]
  %36 = load i64, i64* %9, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @SPEED_1000, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* @VELOCITY_SPEED_1000, align 8
  br label %44

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i64 [ %42, %41 ], [ 0, %43 ]
  %46 = load i64, i64* %9, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @SPEED_100, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i64, i64* @VELOCITY_SPEED_100, align 8
  br label %54

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i64 [ %52, %51 ], [ 0, %53 ]
  %56 = load i64, i64* %9, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @SPEED_10, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i64, i64* @VELOCITY_SPEED_10, align 8
  br label %64

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i64 [ %62, %61 ], [ 0, %63 ]
  %66 = load i64, i64* %9, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %9, align 8
  %68 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DUPLEX_FULL, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i64, i64* @VELOCITY_DUPLEX_FULL, align 8
  br label %77

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i64 [ %75, %74 ], [ 0, %76 ]
  %79 = load i64, i64* %9, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @VELOCITY_AUTONEG_ENABLE, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @VELOCITY_AUTONEG_ENABLE, align 8
  %89 = or i64 %87, %88
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %10, align 4
  br label %159

94:                                               ; preds = %85, %77
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* @VELOCITY_AUTONEG_ENABLE, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @SPD_DPX_AUTO, align 4
  store i32 %100, i32* %11, align 4
  br label %151

101:                                              ; preds = %94
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* @VELOCITY_SPEED_1000, align 8
  %104 = and i64 %102, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* @VELOCITY_DUPLEX_FULL, align 8
  %109 = and i64 %107, %108
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* @SPD_DPX_1000_FULL, align 4
  store i32 %112, i32* %11, align 4
  br label %150

113:                                              ; preds = %106, %101
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* @VELOCITY_SPEED_100, align 8
  %116 = and i64 %114, %115
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %113
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* @VELOCITY_DUPLEX_FULL, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* @SPD_DPX_100_FULL, align 4
  br label %127

125:                                              ; preds = %118
  %126 = load i32, i32* @SPD_DPX_100_HALF, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  store i32 %128, i32* %11, align 4
  br label %149

129:                                              ; preds = %113
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* @VELOCITY_SPEED_10, align 8
  %132 = and i64 %130, %131
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %129
  %135 = load i64, i64* %9, align 8
  %136 = load i64, i64* @VELOCITY_DUPLEX_FULL, align 8
  %137 = and i64 %135, %136
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* @SPD_DPX_10_FULL, align 4
  br label %143

141:                                              ; preds = %134
  %142 = load i32, i32* @SPD_DPX_10_HALF, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  store i32 %144, i32* %11, align 4
  br label %148

145:                                              ; preds = %129
  %146 = load i32, i32* @EOPNOTSUPP, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %161

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %148, %127
  br label %150

150:                                              ; preds = %149, %111
  br label %151

151:                                              ; preds = %150, %99
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %154 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 4
  %156 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %157 = load i64, i64* %9, align 8
  %158 = call i32 @velocity_set_media_mode(%struct.velocity_info* %156, i64 %157)
  br label %159

159:                                              ; preds = %151, %91
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %159, %145
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.velocity_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @check_connection_type(i32) #1

declare dso_local i32 @velocity_set_media_mode(%struct.velocity_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
