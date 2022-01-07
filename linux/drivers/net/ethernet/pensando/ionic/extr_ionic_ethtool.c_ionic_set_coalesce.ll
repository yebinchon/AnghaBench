; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_ethtool.c_ionic_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_ethtool.c_ionic_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ionic_lif = type { i64, i32, %struct.TYPE_11__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.ionic_identity }
%struct.TYPE_9__ = type { i32 }
%struct.ionic_identity = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.ionic_qcq* }
%struct.ionic_qcq = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"bad HW value in dev.intr_coal_div = %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"only the rx-usecs can be changed\0A\00", align 1
@IONIC_INTR_CTRL_COAL_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@IONIC_LIF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @ionic_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.ionic_lif*, align 8
  %7 = alloca %struct.ionic_identity*, align 8
  %8 = alloca %struct.ionic_qcq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ionic_lif* @netdev_priv(%struct.net_device* %12)
  store %struct.ionic_lif* %13, %struct.ionic_lif** %6, align 8
  %14 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %14, i32 0, i32 21
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %113, label %18

18:                                               ; preds = %2
  %19 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %19, i32 0, i32 20
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %113, label %23

23:                                               ; preds = %18
  %24 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %24, i32 0, i32 19
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %113, label %28

28:                                               ; preds = %23
  %29 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %29, i32 0, i32 18
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %113, label %33

33:                                               ; preds = %28
  %34 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %34, i32 0, i32 17
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %113, label %38

38:                                               ; preds = %33
  %39 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %39, i32 0, i32 16
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %113, label %43

43:                                               ; preds = %38
  %44 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %44, i32 0, i32 15
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %113, label %48

48:                                               ; preds = %43
  %49 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %49, i32 0, i32 14
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %113, label %53

53:                                               ; preds = %48
  %54 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %54, i32 0, i32 13
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %113, label %58

58:                                               ; preds = %53
  %59 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %59, i32 0, i32 12
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %113, label %63

63:                                               ; preds = %58
  %64 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %64, i32 0, i32 11
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %113, label %68

68:                                               ; preds = %63
  %69 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %69, i32 0, i32 10
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %113, label %73

73:                                               ; preds = %68
  %74 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %74, i32 0, i32 9
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %113, label %78

78:                                               ; preds = %73
  %79 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %79, i32 0, i32 8
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %113, label %83

83:                                               ; preds = %78
  %84 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %113, label %88

88:                                               ; preds = %83
  %89 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %90 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %113, label %93

93:                                               ; preds = %88
  %94 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %95 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %93
  %99 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %100 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %98
  %104 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %105 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %110 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108, %103, %98, %93, %88, %83, %78, %73, %68, %63, %58, %53, %48, %43, %38, %33, %28, %23, %18, %2
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %226

116:                                              ; preds = %108
  %117 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %118 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %117, i32 0, i32 2
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  store %struct.ionic_identity* %120, %struct.ionic_identity** %7, align 8
  %121 = load %struct.ionic_identity*, %struct.ionic_identity** %7, align 8
  %122 = getelementptr inbounds %struct.ionic_identity, %struct.ionic_identity* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %116
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = load %struct.ionic_identity*, %struct.ionic_identity** %7, align 8
  %129 = getelementptr inbounds %struct.ionic_identity, %struct.ionic_identity* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %127, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %131)
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %226

135:                                              ; preds = %116
  %136 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %137 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %140 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %138, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %135
  %144 = load %struct.net_device*, %struct.net_device** %4, align 8
  %145 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %144, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %226

148:                                              ; preds = %135
  %149 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %150 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %149, i32 0, i32 2
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %153 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @ionic_coal_usec_to_hw(%struct.TYPE_11__* %151, i64 %154)
  store i64 %155, i64* %11, align 8
  %156 = load i64, i64* %11, align 8
  %157 = load i64, i64* @IONIC_INTR_CTRL_COAL_MAX, align 8
  %158 = icmp sgt i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %148
  %160 = load i32, i32* @ERANGE, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  br label %226

162:                                              ; preds = %148
  %163 = load i64, i64* %11, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %162
  %166 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %167 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  store i64 1, i64* %11, align 8
  br label %171

171:                                              ; preds = %170, %165, %162
  %172 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %173 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %172, i32 0, i32 2
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = load i64, i64* %11, align 8
  %176 = call i64 @ionic_coal_hw_to_usec(%struct.TYPE_11__* %174, i64 %175)
  store i64 %176, i64* %10, align 8
  %177 = load i64, i64* %10, align 8
  %178 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %179 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %177, %180
  br i1 %181, label %182, label %225

182:                                              ; preds = %171
  %183 = load i64, i64* %10, align 8
  %184 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %185 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  %186 = load i32, i32* @IONIC_LIF_UP, align 4
  %187 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %188 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @test_bit(i32 %186, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %224

192:                                              ; preds = %182
  store i32 0, i32* %9, align 4
  br label %193

193:                                              ; preds = %220, %192
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %196 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp ult i32 %194, %197
  br i1 %198, label %199, label %223

199:                                              ; preds = %193
  %200 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %201 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %200, i32 0, i32 3
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load %struct.ionic_qcq*, %struct.ionic_qcq** %206, align 8
  store %struct.ionic_qcq* %207, %struct.ionic_qcq** %8, align 8
  %208 = load %struct.ionic_lif*, %struct.ionic_lif** %6, align 8
  %209 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %208, i32 0, i32 2
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.ionic_qcq*, %struct.ionic_qcq** %8, align 8
  %215 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i64, i64* %11, align 8
  %219 = call i32 @ionic_intr_coal_init(i32 %213, i32 %217, i64 %218)
  br label %220

220:                                              ; preds = %199
  %221 = load i32, i32* %9, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %9, align 4
  br label %193

223:                                              ; preds = %193
  br label %224

224:                                              ; preds = %223, %182
  br label %225

225:                                              ; preds = %224, %171
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %225, %159, %143, %126, %113
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local %struct.ionic_lif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @ionic_coal_usec_to_hw(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @ionic_coal_hw_to_usec(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ionic_intr_coal_init(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
