; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_get_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, i64 }
%struct.mlx4_mad_ifc = type { i32, i32, i32, i32, i64, i32, i8* }
%struct.mlx4_cable_info = type { i32, i8*, i64, i64, i8* }

@MODULE_INFO_MAX_READ = common dso_local global i64 0, align 8
@I2C_PAGE_SIZE = common dso_local global i64 0, align 8
@I2C_ADDR_LOW = common dso_local global i64 0, align 8
@MLX4_CMD_MAD_IFC = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_C = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [115 x i8] c"MLX4_CMD_MAD_IFC Get Module info attr(%x) port(%d) i2c_addr(%x) offset(%d) size(%d): Response Mad Status(%x) - %s\0A\00", align 1
@I2C_ADDR_HIGH = common dso_local global i64 0, align 8
@CABLE_INF_I2C_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_get_module_info(%struct.mlx4_dev* %0, i32 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %14 = alloca %struct.mlx4_mad_ifc*, align 8
  %15 = alloca %struct.mlx4_mad_ifc*, align 8
  %16 = alloca %struct.mlx4_cable_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @MODULE_INFO_MAX_READ, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i64, i64* @MODULE_INFO_MAX_READ, align 8
  store i64 %23, i64* %10, align 8
  br label %24

24:                                               ; preds = %22, %5
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %26 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %25)
  store %struct.mlx4_cmd_mailbox* %26, %struct.mlx4_cmd_mailbox** %12, align 8
  %27 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %28 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %32 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %31)
  store i32 %32, i32* %6, align 4
  br label %170

33:                                               ; preds = %24
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %35 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %34)
  store %struct.mlx4_cmd_mailbox* %35, %struct.mlx4_cmd_mailbox** %13, align 8
  %36 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %13, align 8
  %37 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %41 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %42 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %40, %struct.mlx4_cmd_mailbox* %41)
  %43 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %13, align 8
  %44 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %43)
  store i32 %44, i32* %6, align 4
  br label %170

45:                                               ; preds = %33
  %46 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %47 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.mlx4_mad_ifc*
  store %struct.mlx4_mad_ifc* %49, %struct.mlx4_mad_ifc** %14, align 8
  %50 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %13, align 8
  %51 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.mlx4_mad_ifc*
  store %struct.mlx4_mad_ifc* %53, %struct.mlx4_mad_ifc** %15, align 8
  %54 = load %struct.mlx4_mad_ifc*, %struct.mlx4_mad_ifc** %14, align 8
  %55 = getelementptr inbounds %struct.mlx4_mad_ifc, %struct.mlx4_mad_ifc* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.mlx4_mad_ifc*, %struct.mlx4_mad_ifc** %14, align 8
  %57 = getelementptr inbounds %struct.mlx4_mad_ifc, %struct.mlx4_mad_ifc* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load %struct.mlx4_mad_ifc*, %struct.mlx4_mad_ifc** %14, align 8
  %59 = getelementptr inbounds %struct.mlx4_mad_ifc, %struct.mlx4_mad_ifc* %58, i32 0, i32 2
  store i32 1, i32* %59, align 8
  %60 = load %struct.mlx4_mad_ifc*, %struct.mlx4_mad_ifc** %14, align 8
  %61 = getelementptr inbounds %struct.mlx4_mad_ifc, %struct.mlx4_mad_ifc* %60, i32 0, i32 3
  store i32 1, i32* %61, align 4
  %62 = call i8* @cpu_to_be16(i64 65376)
  %63 = load %struct.mlx4_mad_ifc*, %struct.mlx4_mad_ifc** %14, align 8
  %64 = getelementptr inbounds %struct.mlx4_mad_ifc, %struct.mlx4_mad_ifc* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @I2C_PAGE_SIZE, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %45
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i64, i64* @I2C_PAGE_SIZE, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = add nsw i64 %75, %76
  %78 = load i64, i64* @I2C_PAGE_SIZE, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load i64, i64* %10, align 8
  %81 = sub nsw i64 %80, %79
  store i64 %81, i64* %10, align 8
  br label %82

82:                                               ; preds = %74, %68, %45
  %83 = load i64, i64* @I2C_ADDR_LOW, align 8
  store i64 %83, i64* %17, align 8
  %84 = load %struct.mlx4_mad_ifc*, %struct.mlx4_mad_ifc** %14, align 8
  %85 = getelementptr inbounds %struct.mlx4_mad_ifc, %struct.mlx4_mad_ifc* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to %struct.mlx4_cable_info*
  store %struct.mlx4_cable_info* %87, %struct.mlx4_cable_info** %16, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i8* @cpu_to_be16(i64 %88)
  %90 = load %struct.mlx4_cable_info*, %struct.mlx4_cable_info** %16, align 8
  %91 = getelementptr inbounds %struct.mlx4_cable_info, %struct.mlx4_cable_info* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = load %struct.mlx4_cable_info*, %struct.mlx4_cable_info** %16, align 8
  %93 = getelementptr inbounds %struct.mlx4_cable_info, %struct.mlx4_cable_info* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load i64, i64* %17, align 8
  %95 = load %struct.mlx4_cable_info*, %struct.mlx4_cable_info** %16, align 8
  %96 = getelementptr inbounds %struct.mlx4_cable_info, %struct.mlx4_cable_info* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %10, align 8
  %98 = call i8* @cpu_to_be16(i64 %97)
  %99 = load %struct.mlx4_cable_info*, %struct.mlx4_cable_info** %16, align 8
  %100 = getelementptr inbounds %struct.mlx4_cable_info, %struct.mlx4_cable_info* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %102 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %103 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %13, align 8
  %106 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @MLX4_CMD_MAD_IFC, align 4
  %110 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %111 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %112 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %101, i32 %104, i32 %107, i32 %108, i32 3, i32 %109, i32 %110, i32 %111)
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %18, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %82
  br label %162

116:                                              ; preds = %82
  %117 = load %struct.mlx4_mad_ifc*, %struct.mlx4_mad_ifc** %15, align 8
  %118 = getelementptr inbounds %struct.mlx4_mad_ifc, %struct.mlx4_mad_ifc* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @be16_to_cpu(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %149

122:                                              ; preds = %116
  %123 = load %struct.mlx4_mad_ifc*, %struct.mlx4_mad_ifc** %15, align 8
  %124 = getelementptr inbounds %struct.mlx4_mad_ifc, %struct.mlx4_mad_ifc* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @be16_to_cpu(i32 %125)
  store i32 %126, i32* %18, align 4
  %127 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i64, i64* %17, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* %10, align 8
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* %18, align 4
  %134 = call i32 @cable_info_mad_err_str(i32 %133)
  %135 = call i32 @mlx4_warn(%struct.mlx4_dev* %127, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0), i32 65376, i32 %128, i64 %129, i64 %130, i64 %131, i32 %132, i32 %134)
  %136 = load i64, i64* %17, align 8
  %137 = load i64, i64* @I2C_ADDR_HIGH, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %122
  %140 = load i32, i32* %18, align 4
  %141 = call i64 @MAD_STATUS_2_CABLE_ERR(i32 %140)
  %142 = load i64, i64* @CABLE_INF_I2C_ADDR, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  store i32 0, i32* %18, align 4
  br label %148

145:                                              ; preds = %139, %122
  %146 = load i32, i32* %18, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %18, align 4
  br label %148

148:                                              ; preds = %145, %144
  br label %162

149:                                              ; preds = %116
  %150 = load %struct.mlx4_mad_ifc*, %struct.mlx4_mad_ifc** %15, align 8
  %151 = getelementptr inbounds %struct.mlx4_mad_ifc, %struct.mlx4_mad_ifc* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to %struct.mlx4_cable_info*
  store %struct.mlx4_cable_info* %153, %struct.mlx4_cable_info** %16, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = load %struct.mlx4_cable_info*, %struct.mlx4_cable_info** %16, align 8
  %156 = getelementptr inbounds %struct.mlx4_cable_info, %struct.mlx4_cable_info* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i64, i64* %10, align 8
  %159 = call i32 @memcpy(i32* %154, i32 %157, i64 %158)
  %160 = load i64, i64* %10, align 8
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %18, align 4
  br label %162

162:                                              ; preds = %149, %148, %115
  %163 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %164 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %165 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %163, %struct.mlx4_cmd_mailbox* %164)
  %166 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %167 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %13, align 8
  %168 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %166, %struct.mlx4_cmd_mailbox* %167)
  %169 = load i32, i32* %18, align 4
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %162, %39, %30
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local i32 @cable_info_mad_err_str(i32) #1

declare dso_local i64 @MAD_STATUS_2_CABLE_ERR(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
