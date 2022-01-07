; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_ethtool.c_ehea_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_ethtool.c_ehea_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.ehea_port = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

@ETH_SS_STATS = common dso_local global i32 0, align 4
@EHEA_MAX_PORT_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @ehea_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ehea_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %11)
  store %struct.ehea_port* %12, %struct.ehea_port** %10, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %24, %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = load i32, i32* @ETH_SS_STATS, align 4
  %17 = call i32 @ehea_get_sset_count(%struct.net_device* %15, i32 %16)
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %13

27:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  %28 = load %struct.ehea_port*, %struct.ehea_port** %10, align 8
  %29 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 %30, i32* %35, align 4
  %36 = load %struct.ehea_port*, %struct.ehea_port** %10, align 8
  %37 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %41, i32* %46, align 4
  %47 = load %struct.ehea_port*, %struct.ehea_port** %10, align 8
  %48 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %49, i32* %54, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %73, %27
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @EHEA_MAX_PORT_RES, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load %struct.ehea_port*, %struct.ehea_port** %10, align 8
  %61 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %55

76:                                               ; preds = %55
  %77 = load i32, i32* %9, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 %77, i32* %82, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %101, %76
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @EHEA_MAX_PORT_RES, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %83
  %88 = load %struct.ehea_port*, %struct.ehea_port** %10, align 8
  %89 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %87
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %83

104:                                              ; preds = %83
  %105 = load i32, i32* %9, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32 %105, i32* %110, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %129, %104
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @EHEA_MAX_PORT_RES, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %111
  %116 = load %struct.ehea_port*, %struct.ehea_port** %10, align 8
  %117 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %115
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %111

132:                                              ; preds = %111
  %133 = load i32, i32* %9, align 4
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  store i32 %133, i32* %138, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %139

139:                                              ; preds = %157, %132
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @EHEA_MAX_PORT_RES, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %139
  %144 = load %struct.ehea_port*, %struct.ehea_port** %10, align 8
  %145 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %144, i32 0, i32 2
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %9, align 4
  br label %157

157:                                              ; preds = %143
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %139

160:                                              ; preds = %139
  %161 = load i32, i32* %9, align 4
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  store i32 %161, i32* %166, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %167

167:                                              ; preds = %185, %160
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @EHEA_MAX_PORT_RES, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %188

171:                                              ; preds = %167
  %172 = load %struct.ehea_port*, %struct.ehea_port** %10, align 8
  %173 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %172, i32 0, i32 2
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %182, %180
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %9, align 4
  br label %185

185:                                              ; preds = %171
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %8, align 4
  br label %167

188:                                              ; preds = %167
  %189 = load i32, i32* %9, align 4
  %190 = load i32*, i32** %6, align 8
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %7, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %189, i32* %194, align 4
  store i32 0, i32* %8, align 4
  br label %195

195:                                              ; preds = %212, %188
  %196 = load i32, i32* %8, align 4
  %197 = icmp slt i32 %196, 16
  br i1 %197, label %198, label %215

198:                                              ; preds = %195
  %199 = load %struct.ehea_port*, %struct.ehea_port** %10, align 8
  %200 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %199, i32 0, i32 2
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  %206 = call i32 @atomic_read(i32* %205)
  %207 = load i32*, i32** %6, align 8
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %7, align 4
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  store i32 %206, i32* %211, align 4
  br label %212

212:                                              ; preds = %198
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %8, align 4
  br label %195

215:                                              ; preds = %195
  ret void
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ehea_get_sset_count(%struct.net_device*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
