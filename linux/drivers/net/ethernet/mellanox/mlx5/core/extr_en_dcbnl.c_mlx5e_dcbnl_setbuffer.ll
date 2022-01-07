; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_setbuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_setbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dcbnl_buffer = type { i64*, i64* }
%struct.mlx5e_priv = type { %struct.TYPE_4__, %struct.mlx5_core_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_port_buffer = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@MLX5E_MAX_PRIORITY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DCBX_MAX_BUFFERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"buffer[%d]=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"priority %d buffer%d\0A\00", align 1
@MLX5E_PORT_BUFFER_PRIO2BUFFER = common dso_local global i64 0, align 8
@MLX5E_MAX_BUFFER = common dso_local global i32 0, align 4
@MLX5E_PORT_BUFFER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.dcbnl_buffer*)* @mlx5e_dcbnl_setbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_dcbnl_setbuffer(%struct.net_device* %0, %struct.dcbnl_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dcbnl_buffer*, align 8
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca %struct.mlx5e_port_buffer, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.dcbnl_buffer* %1, %struct.dcbnl_buffer** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.mlx5e_priv* %18, %struct.mlx5e_priv** %6, align 8
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %19, i32 0, i32 1
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %20, align 8
  store %struct.mlx5_core_dev* %21, %struct.mlx5_core_dev** %7, align 8
  %22 = load i32, i32* @MLX5E_MAX_PRIORITY, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  store i64* null, i64** %11, align 8
  store i64* null, i64** %12, align 8
  store i64 0, i64* %13, align 8
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %27 = call i32 @MLX5_BUFFER_SUPPORTED(%struct.mlx5_core_dev* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %162

32:                                               ; preds = %2
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @DCBX_MAX_BUFFERS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.dcbnl_buffer*, %struct.dcbnl_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.dcbnl_buffer, %struct.dcbnl_buffer* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %46)
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %14, align 4
  br label %33

51:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %67, %51
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @MLX5E_MAX_PRIORITY, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.dcbnl_buffer*, %struct.dcbnl_buffer** %5, align 8
  %60 = getelementptr inbounds %struct.dcbnl_buffer, %struct.dcbnl_buffer* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %58, i64 %65)
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %52

70:                                               ; preds = %52
  %71 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %72 = call i32 @mlx5e_port_query_priority2buffer(%struct.mlx5_core_dev* %71, i64* %25)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %162

77:                                               ; preds = %70
  store i32 0, i32* %14, align 4
  br label %78

78:                                               ; preds = %103, %77
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @MLX5E_MAX_PRIORITY, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %106

82:                                               ; preds = %78
  %83 = load %struct.dcbnl_buffer*, %struct.dcbnl_buffer** %5, align 8
  %84 = getelementptr inbounds %struct.dcbnl_buffer, %struct.dcbnl_buffer* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %25, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %89, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %82
  %96 = load i64, i64* @MLX5E_PORT_BUFFER_PRIO2BUFFER, align 8
  %97 = load i64, i64* %13, align 8
  %98 = or i64 %97, %96
  store i64 %98, i64* %13, align 8
  %99 = load %struct.dcbnl_buffer*, %struct.dcbnl_buffer** %5, align 8
  %100 = getelementptr inbounds %struct.dcbnl_buffer, %struct.dcbnl_buffer* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  store i64* %101, i64** %12, align 8
  br label %106

102:                                              ; preds = %82
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %78

106:                                              ; preds = %95, %78
  %107 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %108 = call i32 @mlx5e_port_query_buffer(%struct.mlx5e_priv* %107, %struct.mlx5e_port_buffer* %8)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* %15, align 4
  store i32 %112, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %162

113:                                              ; preds = %106
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %142, %113
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @MLX5E_MAX_BUFFER, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %145

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.mlx5e_port_buffer, %struct.mlx5e_port_buffer* %8, i32 0, i32 0
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.dcbnl_buffer*, %struct.dcbnl_buffer** %5, align 8
  %127 = getelementptr inbounds %struct.dcbnl_buffer, %struct.dcbnl_buffer* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %125, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %118
  %135 = load i64, i64* @MLX5E_PORT_BUFFER_SIZE, align 8
  %136 = load i64, i64* %13, align 8
  %137 = or i64 %136, %135
  store i64 %137, i64* %13, align 8
  %138 = load %struct.dcbnl_buffer*, %struct.dcbnl_buffer** %5, align 8
  %139 = getelementptr inbounds %struct.dcbnl_buffer, %struct.dcbnl_buffer* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  store i64* %140, i64** %11, align 8
  br label %145

141:                                              ; preds = %118
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %14, align 4
  br label %114

145:                                              ; preds = %134, %114
  %146 = load i64, i64* %13, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %162

149:                                              ; preds = %145
  %150 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %151 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i32 1, i32* %152, align 8
  %153 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %154 = load i64, i64* %13, align 8
  %155 = load %struct.net_device*, %struct.net_device** %4, align 8
  %156 = getelementptr inbounds %struct.net_device, %struct.net_device* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i64*, i64** %11, align 8
  %159 = load i64*, i64** %12, align 8
  %160 = call i32 @mlx5e_port_manual_buffer_config(%struct.mlx5e_priv* %153, i64 %154, i32 %157, i32* null, i64* %158, i64* %159)
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %15, align 4
  store i32 %161, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %162

162:                                              ; preds = %149, %148, %111, %75, %29
  %163 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @MLX5_BUFFER_SUPPORTED(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32, i64) #1

declare dso_local i32 @mlx5e_port_query_priority2buffer(%struct.mlx5_core_dev*, i64*) #1

declare dso_local i32 @mlx5e_port_query_buffer(%struct.mlx5e_priv*, %struct.mlx5e_port_buffer*) #1

declare dso_local i32 @mlx5e_port_manual_buffer_config(%struct.mlx5e_priv*, i64, i32, i32*, i64*, i64*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
