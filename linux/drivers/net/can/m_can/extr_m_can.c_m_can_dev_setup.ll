; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_dev_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_dev_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_can_classdev = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32*, i32*, i32, i32, %struct.net_device* }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_3__ = type { i32, i32*, i32*, i32, i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unsupported version number: %2d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@m_can_poll = common dso_local global i32 0, align 4
@M_CAN_NAPI_WEIGHT = common dso_local global i32 0, align 4
@m_can_set_mode = common dso_local global i32 0, align 4
@m_can_get_berr_counter = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD_NON_ISO = common dso_local global i32 0, align 4
@m_can_bittiming_const_30X = common dso_local global i32 0, align 4
@m_can_data_bittiming_const_30X = common dso_local global i32 0, align 4
@m_can_bittiming_const_31X = common dso_local global i32 0, align 4
@m_can_data_bittiming_const_31X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_can_classdev*)* @m_can_dev_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_can_dev_setup(%struct.m_can_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.m_can_classdev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.m_can_classdev* %0, %struct.m_can_classdev** %3, align 8
  %6 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %7 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %6, i32 0, i32 8
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %10 = call i32 @m_can_check_core_release(%struct.m_can_classdev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %15 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %192

21:                                               ; preds = %1
  %22 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %23 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %29 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %28, i32 0, i32 6
  %30 = load i32, i32* @m_can_poll, align 4
  %31 = load i32, i32* @M_CAN_NAPI_WEIGHT, align 4
  %32 = call i32 @netif_napi_add(%struct.net_device* %27, i32* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %26, %21
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %36 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @m_can_set_mode, align 4
  %38 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %39 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @m_can_get_berr_counter, align 4
  %42 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %43 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %46 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @CAN_CTRLMODE_BERR_REPORTING, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %53 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %56 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %164 [
    i32 30, label %58
    i32 31, label %90
    i32 32, label %122
  ]

58:                                               ; preds = %33
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = load i32, i32* @CAN_CTRLMODE_FD_NON_ISO, align 4
  %61 = call i32 @can_set_static_ctrlmode(%struct.net_device* %59, i32 %60)
  %62 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %63 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %68 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  br label %71

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %66
  %72 = phi i32* [ %69, %66 ], [ @m_can_bittiming_const_30X, %70 ]
  %73 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %74 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  store i32* %72, i32** %75, align 8
  %76 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %77 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %82 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  br label %85

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %80
  %86 = phi i32* [ %83, %80 ], [ @m_can_data_bittiming_const_30X, %84 ]
  %87 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %88 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i32* %86, i32** %89, align 8
  br label %174

90:                                               ; preds = %33
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = load i32, i32* @CAN_CTRLMODE_FD_NON_ISO, align 4
  %93 = call i32 @can_set_static_ctrlmode(%struct.net_device* %91, i32 %92)
  %94 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %95 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %100 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  br label %103

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102, %98
  %104 = phi i32* [ %101, %98 ], [ @m_can_bittiming_const_31X, %102 ]
  %105 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %106 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  store i32* %104, i32** %107, align 8
  %108 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %109 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %103
  %113 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %114 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  br label %117

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116, %112
  %118 = phi i32* [ %115, %112 ], [ @m_can_data_bittiming_const_31X, %116 ]
  %119 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %120 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  store i32* %118, i32** %121, align 8
  br label %174

122:                                              ; preds = %33
  %123 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %124 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %129 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %128, i32 0, i32 5
  %130 = load i32*, i32** %129, align 8
  br label %132

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131, %127
  %133 = phi i32* [ %130, %127 ], [ @m_can_bittiming_const_31X, %131 ]
  %134 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %135 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 2
  store i32* %133, i32** %136, align 8
  %137 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %138 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %132
  %142 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %143 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  br label %146

145:                                              ; preds = %132
  br label %146

146:                                              ; preds = %145, %141
  %147 = phi i32* [ %144, %141 ], [ @m_can_data_bittiming_const_31X, %145 ]
  %148 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %149 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  store i32* %147, i32** %150, align 8
  %151 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %152 = call i32 @m_can_niso_supported(%struct.m_can_classdev* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %146
  %155 = load i32, i32* @CAN_CTRLMODE_FD_NON_ISO, align 4
  br label %157

156:                                              ; preds = %146
  br label %157

157:                                              ; preds = %156, %154
  %158 = phi i32 [ %155, %154 ], [ 0, %156 ]
  %159 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %160 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %158
  store i32 %163, i32* %161, align 8
  br label %174

164:                                              ; preds = %33
  %165 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %166 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %169 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @dev_err(i32 %167, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %2, align 4
  br label %192

174:                                              ; preds = %157, %117, %85
  %175 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %176 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %175, i32 0, i32 1
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = bitcast {}** %178 to i32 (%struct.m_can_classdev*)**
  %180 = load i32 (%struct.m_can_classdev*)*, i32 (%struct.m_can_classdev*)** %179, align 8
  %181 = icmp ne i32 (%struct.m_can_classdev*)* %180, null
  br i1 %181, label %182, label %191

182:                                              ; preds = %174
  %183 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %184 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %183, i32 0, i32 1
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = bitcast {}** %186 to i32 (%struct.m_can_classdev*)**
  %188 = load i32 (%struct.m_can_classdev*)*, i32 (%struct.m_can_classdev*)** %187, align 8
  %189 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %190 = call i32 %188(%struct.m_can_classdev* %189)
  br label %191

191:                                              ; preds = %182, %174
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %191, %164, %13
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32 @m_can_check_core_release(%struct.m_can_classdev*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @can_set_static_ctrlmode(%struct.net_device*, i32) #1

declare dso_local i32 @m_can_niso_supported(%struct.m_can_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
