; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i32, i32, i64 }
%struct.xgbe_prv_data = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"other channel count must be zero\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"at least one combined Rx/Tx channel is required\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"combined channel count cannot exceed %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"cannot specify both Rx-only and Tx-only channels\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"total Rx channels (%u) requested exceeds maximum available (%u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"total Tx channels (%u) requested exceeds maximum available (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_channels*)* @xgbe_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_set_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  %6 = alloca %struct.xgbe_prv_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %12)
  store %struct.xgbe_prv_data* %13, %struct.xgbe_prv_data** %6, align 8
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %15 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %19 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @min(i32 %17, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @min(i32 %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %28 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %32 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @min(i32 %30, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %37 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @min(i32 %35, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %42 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @min(i32 %40, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @min(i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %2
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %210

57:                                               ; preds = %2
  %58 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %63, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %67 = call i32 @xgbe_print_set_channels_input(%struct.net_device* %65, %struct.ethtool_channels* %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %210

70:                                               ; preds = %57
  %71 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = icmp ugt i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %77, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %82 = call i32 @xgbe_print_set_channels_input(%struct.net_device* %80, %struct.ethtool_channels* %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %210

85:                                               ; preds = %70
  %86 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %92 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.net_device*, %struct.net_device** %4, align 8
  %97 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %96, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %98 = load %struct.net_device*, %struct.net_device** %4, align 8
  %99 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %100 = call i32 @xgbe_print_set_channels_input(%struct.net_device* %98, %struct.ethtool_channels* %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %210

103:                                              ; preds = %90, %85
  %104 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %105 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %108 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add i32 %106, %109
  %111 = load i32, i32* %7, align 4
  %112 = icmp ugt i32 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %103
  %114 = load %struct.net_device*, %struct.net_device** %4, align 8
  %115 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %116 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %119 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add i32 %117, %120
  %122 = load i32, i32* %7, align 4
  %123 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %114, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %121, i32 %122)
  %124 = load %struct.net_device*, %struct.net_device** %4, align 8
  %125 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %126 = call i32 @xgbe_print_set_channels_input(%struct.net_device* %124, %struct.ethtool_channels* %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %210

129:                                              ; preds = %103
  %130 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %131 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %134 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = add i32 %132, %135
  %137 = load i32, i32* %9, align 4
  %138 = icmp ugt i32 %136, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %129
  %140 = load %struct.net_device*, %struct.net_device** %4, align 8
  %141 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %142 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %145 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = add i32 %143, %146
  %148 = load i32, i32* %9, align 4
  %149 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %140, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 %147, i32 %148)
  %150 = load %struct.net_device*, %struct.net_device** %4, align 8
  %151 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %152 = call i32 @xgbe_print_set_channels_input(%struct.net_device* %150, %struct.ethtool_channels* %151)
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %210

155:                                              ; preds = %129
  %156 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %157 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %160 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = add i32 %158, %161
  store i32 %162, i32* %7, align 4
  %163 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %164 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %167 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = add i32 %165, %168
  store i32 %169, i32* %9, align 4
  %170 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %171 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %155
  br label %179

175:                                              ; preds = %155
  %176 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %177 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  br label %179

179:                                              ; preds = %175, %174
  %180 = phi i32 [ %172, %174 ], [ %178, %175 ]
  store i32 %180, i32* %8, align 4
  %181 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %182 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %190

186:                                              ; preds = %179
  %187 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %188 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 4
  br label %190

190:                                              ; preds = %186, %185
  %191 = phi i32 [ %183, %185 ], [ %189, %186 ]
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %8, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  br label %209

200:                                              ; preds = %195, %190
  %201 = load i32, i32* %7, align 4
  %202 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %203 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %206 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %205, i32 0, i32 6
  store i32 %204, i32* %206, align 4
  %207 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %208 = call i32 @xgbe_full_restart_dev(%struct.xgbe_prv_data* %207)
  br label %209

209:                                              ; preds = %200, %199
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %209, %139, %113, %95, %76, %62, %52
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @xgbe_print_set_channels_input(%struct.net_device*, %struct.ethtool_channels*) #1

declare dso_local i32 @xgbe_full_restart_dev(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
