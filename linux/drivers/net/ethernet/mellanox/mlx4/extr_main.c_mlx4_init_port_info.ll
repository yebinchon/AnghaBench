; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_init_port_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_init_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.devlink = type { i32 }
%struct.mlx4_port_info = type { i32, i32, %struct.TYPE_12__, %struct.mlx4_dev*, %struct.TYPE_12__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.mlx4_port_info* }

@.str = private unnamed_addr constant [12 x i8] c"mlx4_port%d\00", align 1
@set_port_type = common dso_local global i32 0, align 4
@show_port_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to create file for port %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"mlx4_port%d_mtu\00", align 1
@set_port_ib_mtu = common dso_local global i32 0, align 4
@show_port_ib_mtu = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to create mtu file for port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32)* @mlx4_init_port_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_init_port_info(%struct.mlx4_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.mlx4_port_info*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %10 = call %struct.TYPE_11__* @mlx4_priv(%struct.mlx4_dev* %9)
  %11 = call %struct.devlink* @priv_to_devlink(%struct.TYPE_11__* %10)
  store %struct.devlink* %11, %struct.devlink** %6, align 8
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %13 = call %struct.TYPE_11__* @mlx4_priv(%struct.mlx4_dev* %12)
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %15, i64 %17
  store %struct.mlx4_port_info* %18, %struct.mlx4_port_info** %7, align 8
  %19 = load %struct.devlink*, %struct.devlink** %6, align 8
  %20 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %21 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %20, i32 0, i32 1
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @devlink_port_register(%struct.devlink* %19, i32* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %188

28:                                               ; preds = %2
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %30 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %31 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %30, i32 0, i32 3
  store %struct.mlx4_dev* %29, %struct.mlx4_dev** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %34 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %36 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %28
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %40 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %41 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %40, i32 0, i32 10
  %42 = call i32 @mlx4_init_mac_table(%struct.mlx4_dev* %39, i32* %41)
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %44 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %45 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %44, i32 0, i32 9
  %46 = call i32 @mlx4_init_vlan_table(%struct.mlx4_dev* %43, i32* %45)
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %48 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %49 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %48, i32 0, i32 8
  %50 = call i32 @mlx4_init_roce_gid_table(%struct.mlx4_dev* %47, i32* %49)
  %51 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @mlx4_get_base_qpn(%struct.mlx4_dev* %51, i32 %52)
  %54 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %55 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %38, %28
  %57 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %58 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @sprintf(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %63 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %66 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %70 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %56
  %73 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %74 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store i32 292, i32* %76, align 8
  br label %86

77:                                               ; preds = %56
  %78 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %79 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i32 420, i32* %81, align 8
  %82 = load i32, i32* @set_port_type, align 4
  %83 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %84 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %77, %72
  %87 = load i32, i32* @show_port_type, align 4
  %88 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %89 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 8
  %91 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %92 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = call i32 @sysfs_attr_init(%struct.TYPE_10__* %93)
  %95 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %96 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %102 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %101, i32 0, i32 2
  %103 = call i32 @device_create_file(i32* %100, %struct.TYPE_12__* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %86
  %107 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @mlx4_err(%struct.mlx4_dev* %107, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %111 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %110, i32 0, i32 1
  %112 = call i32 @devlink_port_unregister(i32* %111)
  %113 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %114 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %113, i32 0, i32 0
  store i32 -1, i32* %114, align 8
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %188

116:                                              ; preds = %86
  %117 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %118 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @sprintf(i32 %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %123 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %126 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 4
  %129 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %130 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %116
  %133 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %134 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  store i32 292, i32* %136, align 8
  br label %146

137:                                              ; preds = %116
  %138 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %139 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  store i32 420, i32* %141, align 8
  %142 = load i32, i32* @set_port_ib_mtu, align 4
  %143 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %144 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 2
  store i32 %142, i32* %145, align 4
  br label %146

146:                                              ; preds = %137, %132
  %147 = load i32, i32* @show_port_ib_mtu, align 4
  %148 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %149 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 8
  %151 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %152 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = call i32 @sysfs_attr_init(%struct.TYPE_10__* %153)
  %155 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %156 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %155, i32 0, i32 0
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %162 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %161, i32 0, i32 4
  %163 = call i32 @device_create_file(i32* %160, %struct.TYPE_12__* %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %187

166:                                              ; preds = %146
  %167 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @mlx4_err(%struct.mlx4_dev* %167, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %168)
  %170 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %171 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %170, i32 0, i32 3
  %172 = load %struct.mlx4_dev*, %struct.mlx4_dev** %171, align 8
  %173 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %172, i32 0, i32 0
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %179 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %178, i32 0, i32 2
  %180 = call i32 @device_remove_file(i32* %177, %struct.TYPE_12__* %179)
  %181 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %182 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %181, i32 0, i32 1
  %183 = call i32 @devlink_port_unregister(i32* %182)
  %184 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %185 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %184, i32 0, i32 0
  store i32 -1, i32* %185, align 8
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %3, align 4
  br label %188

187:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %166, %106, %26
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local %struct.devlink* @priv_to_devlink(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @devlink_port_register(%struct.devlink*, i32*, i32) #1

declare dso_local i32 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_mac_table(%struct.mlx4_dev*, i32*) #1

declare dso_local i32 @mlx4_init_vlan_table(%struct.mlx4_dev*, i32*) #1

declare dso_local i32 @mlx4_init_roce_gid_table(%struct.mlx4_dev*, i32*) #1

declare dso_local i32 @mlx4_get_base_qpn(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_10__*) #1

declare dso_local i32 @device_create_file(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @devlink_port_unregister(i32*) #1

declare dso_local i32 @device_remove_file(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
