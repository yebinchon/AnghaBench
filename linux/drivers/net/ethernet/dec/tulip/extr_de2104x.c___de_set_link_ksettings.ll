; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c___de_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c___de_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@PORT_TP = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@DE_MEDIA_AUI = common dso_local global i32 0, align 4
@ADVERTISED_AUI = common dso_local global i32 0, align 4
@DE_MEDIA_BNC = common dso_local global i32 0, align 4
@ADVERTISED_BNC = common dso_local global i32 0, align 4
@DE_MEDIA_TP_AUTO = common dso_local global i32 0, align 4
@DE_MEDIA_TP_FD = common dso_local global i32 0, align 4
@DE_MEDIA_TP = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@DE_TIMER_NO_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.de_private*, %struct.ethtool_link_ksettings*)* @__de_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__de_set_link_ksettings(%struct.de_private* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.de_private*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.de_private* %0, %struct.de_private** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %12 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %11, i32 %27)
  %29 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 10
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %217

37:                                               ; preds = %2
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @DUPLEX_HALF, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @DUPLEX_FULL, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %217

48:                                               ; preds = %41, %37
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @PORT_TP, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 129
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 128
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %217

61:                                               ; preds = %55, %52, %48
  %62 = load %struct.de_private*, %struct.de_private** %4, align 8
  %63 = getelementptr inbounds %struct.de_private, %struct.de_private* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i64, i64* %9, align 8
  %68 = icmp eq i64 %67, 128
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %217

72:                                               ; preds = %66, %61
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @AUTONEG_DISABLE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @AUTONEG_ENABLE, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %217

83:                                               ; preds = %76, %72
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.de_private*, %struct.de_private** %4, align 8
  %86 = getelementptr inbounds %struct.de_private, %struct.de_private* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = xor i32 %87, -1
  %89 = and i32 %84, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %217

94:                                               ; preds = %83
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @AUTONEG_ENABLE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %217

106:                                              ; preds = %98, %94
  %107 = load i64, i64* %9, align 8
  switch i64 %107, label %128 [
    i64 129, label %108
    i64 128, label %118
  ]

108:                                              ; preds = %106
  %109 = load i32, i32* @DE_MEDIA_AUI, align 4
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @ADVERTISED_AUI, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %217

117:                                              ; preds = %108
  br label %162

118:                                              ; preds = %106
  %119 = load i32, i32* @DE_MEDIA_BNC, align 4
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @ADVERTISED_BNC, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %217

127:                                              ; preds = %118
  br label %162

128:                                              ; preds = %106
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* @AUTONEG_ENABLE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @DE_MEDIA_TP_AUTO, align 4
  store i32 %133, i32* %6, align 4
  br label %143

134:                                              ; preds = %128
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* @DUPLEX_FULL, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* @DE_MEDIA_TP_FD, align 4
  store i32 %139, i32* %6, align 4
  br label %142

140:                                              ; preds = %134
  %141 = load i32, i32* @DE_MEDIA_TP, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %140, %138
  br label %143

143:                                              ; preds = %142, %132
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @ADVERTISED_TP, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %217

151:                                              ; preds = %143
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %154 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %152, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %151
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %217

161:                                              ; preds = %151
  br label %162

162:                                              ; preds = %161, %127, %117
  %163 = load i64, i64* %10, align 8
  %164 = load i64, i64* @AUTONEG_ENABLE, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 0, i32 1
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.de_private*, %struct.de_private** %4, align 8
  %170 = getelementptr inbounds %struct.de_private, %struct.de_private* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %168, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %162
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.de_private*, %struct.de_private** %4, align 8
  %176 = getelementptr inbounds %struct.de_private, %struct.de_private* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %174, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %173
  %180 = load i32, i32* %11, align 4
  %181 = load %struct.de_private*, %struct.de_private** %4, align 8
  %182 = getelementptr inbounds %struct.de_private, %struct.de_private* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %180, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  store i32 0, i32* %3, align 4
  br label %217

186:                                              ; preds = %179, %173, %162
  %187 = load %struct.de_private*, %struct.de_private** %4, align 8
  %188 = call i32 @de_link_down(%struct.de_private* %187)
  %189 = load %struct.de_private*, %struct.de_private** %4, align 8
  %190 = getelementptr inbounds %struct.de_private, %struct.de_private* %189, i32 0, i32 5
  %191 = load i64, i64* @jiffies, align 8
  %192 = load i64, i64* @DE_TIMER_NO_LINK, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @mod_timer(i32* %190, i64 %193)
  %195 = load %struct.de_private*, %struct.de_private** %4, align 8
  %196 = call i32 @de_stop_rxtx(%struct.de_private* %195)
  %197 = load i32, i32* %6, align 4
  %198 = load %struct.de_private*, %struct.de_private** %4, align 8
  %199 = getelementptr inbounds %struct.de_private, %struct.de_private* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %7, align 4
  %201 = load %struct.de_private*, %struct.de_private** %4, align 8
  %202 = getelementptr inbounds %struct.de_private, %struct.de_private* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* %11, align 4
  %204 = load %struct.de_private*, %struct.de_private** %4, align 8
  %205 = getelementptr inbounds %struct.de_private, %struct.de_private* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 4
  %206 = load %struct.de_private*, %struct.de_private** %4, align 8
  %207 = call i32 @de_set_media(%struct.de_private* %206)
  %208 = load %struct.de_private*, %struct.de_private** %4, align 8
  %209 = getelementptr inbounds %struct.de_private, %struct.de_private* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = call i64 @netif_running(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %186
  %214 = load %struct.de_private*, %struct.de_private** %4, align 8
  %215 = call i32 @de_start_rxtx(%struct.de_private* %214)
  br label %216

216:                                              ; preds = %213, %186
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %216, %185, %158, %148, %124, %114, %103, %91, %80, %69, %58, %45, %34
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i32*, i32) #1

declare dso_local i32 @de_link_down(%struct.de_private*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @de_stop_rxtx(%struct.de_private*) #1

declare dso_local i32 @de_set_media(%struct.de_private*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @de_start_rxtx(%struct.de_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
