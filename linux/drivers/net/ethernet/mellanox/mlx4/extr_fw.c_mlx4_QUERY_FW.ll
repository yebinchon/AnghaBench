; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_QUERY_FW.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_QUERY_FW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx4_fw = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_cmd = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, i32* }
%struct.TYPE_4__ = type { %struct.mlx4_cmd, %struct.mlx4_fw }

@MLX4_CMD_QUERY_FW = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@MLX4_COMMAND_INTERFACE_MIN_REV = common dso_local global i64 0, align 8
@MLX4_COMMAND_INTERFACE_MAX_REV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"Installed FW has unsupported command interface revision %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"(Installed FW version is %d.%d.%03d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"This driver version supports only revisions %d to %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MLX4_COMMAND_INTERFACE_NEW_PORT_CMDS = common dso_local global i64 0, align 8
@MLX4_FLAG_OLD_PORT_CMDS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"FW version %d.%d.%03d (cmd intf rev %d), max commands %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Catastrophic error buffer at 0x%llx, size 0x%x, BAR %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Communication vector bar:%d offset:0x%llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"FW size %d KB\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Internal clock bar:%d offset:0x%llx\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@MLX4_ICM_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MLX4_ICM_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"Clear int @ %llx, BAR %d\0A\00", align 1
@QUERY_FW_CLOCK_BAR = common dso_local global i32 0, align 4
@QUERY_FW_CLOCK_OFFSET = common dso_local global i32 0, align 4
@QUERY_FW_CLR_INT_BAR_OFFSET = common dso_local global i32 0, align 4
@QUERY_FW_CLR_INT_BASE_OFFSET = common dso_local global i32 0, align 4
@QUERY_FW_CMD_IF_REV_OFFSET = common dso_local global i32 0, align 4
@QUERY_FW_COMM_BAR_OFFSET = common dso_local global i32 0, align 4
@QUERY_FW_COMM_BASE_OFFSET = common dso_local global i32 0, align 4
@QUERY_FW_ERR_BAR_OFFSET = common dso_local global i32 0, align 4
@QUERY_FW_ERR_SIZE_OFFSET = common dso_local global i32 0, align 4
@QUERY_FW_ERR_START_OFFSET = common dso_local global i32 0, align 4
@QUERY_FW_MAX_CMD_OFFSET = common dso_local global i32 0, align 4
@QUERY_FW_PPF_ID = common dso_local global i32 0, align 4
@QUERY_FW_SIZE_OFFSET = common dso_local global i32 0, align 4
@QUERY_FW_VER_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_FW(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_fw*, align 8
  %5 = alloca %struct.mlx4_cmd*, align 8
  %6 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %13 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store %struct.mlx4_fw* %14, %struct.mlx4_fw** %4, align 8
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %16 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.mlx4_cmd* %17, %struct.mlx4_cmd** %5, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %19 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %18)
  store %struct.mlx4_cmd_mailbox* %19, %struct.mlx4_cmd_mailbox** %6, align 8
  %20 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %21 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %24)
  store i32 %25, i32* %2, align 4
  br label %297

26:                                               ; preds = %1
  %27 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %7, align 8
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %31 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MLX4_CMD_QUERY_FW, align 4
  %35 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %36 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %37 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %30, i32 0, i32 %33, i32 0, i32 0, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %292

41:                                               ; preds = %26
  %42 = load i32, i32* %9, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @MLX4_GET(i32 %42, i32* %43, i32 0)
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = and i64 %46, 281470681743360
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = and i64 %49, 4294901760
  %51 = lshr i64 %50, 16
  %52 = or i64 %47, %51
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = and i64 %54, 65535
  %56 = shl i64 %55, 16
  %57 = or i64 %52, %56
  %58 = trunc i64 %57 to i32
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %60 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @MLX4_GET(i32 %62, i32* %63, i32 9)
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %67 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %70 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %41
  br label %292

73:                                               ; preds = %41
  %74 = load i64, i64* %10, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @MLX4_GET(i32 %75, i32* %76, i32 10)
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* @MLX4_COMMAND_INTERFACE_MIN_REV, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %73
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @MLX4_COMMAND_INTERFACE_MAX_REV, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %81, %73
  %86 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i32 (%struct.mlx4_dev*, i8*, i64, ...) @mlx4_err(%struct.mlx4_dev* %86, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %87)
  %89 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %90 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %91 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 32
  %95 = sext i32 %94 to i64
  %96 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %97 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 16
  %101 = and i32 %100, 65535
  %102 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %103 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 65535
  %107 = call i32 (%struct.mlx4_dev*, i8*, i64, ...) @mlx4_err(%struct.mlx4_dev* %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %95, i32 %101, i32 %106)
  %108 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %109 = load i64, i64* @MLX4_COMMAND_INTERFACE_MIN_REV, align 8
  %110 = load i64, i64* @MLX4_COMMAND_INTERFACE_MAX_REV, align 8
  %111 = call i32 (%struct.mlx4_dev*, i8*, i64, ...) @mlx4_err(%struct.mlx4_dev* %108, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %109, i64 %110)
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %8, align 4
  br label %292

114:                                              ; preds = %81
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* @MLX4_COMMAND_INTERFACE_NEW_PORT_CMDS, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load i32, i32* @MLX4_FLAG_OLD_PORT_CMDS, align 4
  %120 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %121 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %118, %114
  %125 = load i32, i32* %11, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = call i32 @MLX4_GET(i32 %125, i32* %126, i32 15)
  %128 = load i32, i32* %11, align 4
  %129 = shl i32 1, %128
  %130 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %5, align 8
  %131 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %133 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %134 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 32
  %138 = sext i32 %137 to i64
  %139 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %140 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %142, 16
  %144 = and i32 %143, 65535
  %145 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %146 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 65535
  %150 = load i64, i64* %10, align 8
  %151 = load %struct.mlx4_cmd*, %struct.mlx4_cmd** %5, align 8
  %152 = getelementptr inbounds %struct.mlx4_cmd, %struct.mlx4_cmd* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (%struct.mlx4_dev*, i8*, i64, ...) @mlx4_dbg(%struct.mlx4_dev* %132, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i64 %138, i32 %144, i32 %149, i64 %150, i32 %153)
  %155 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %156 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %7, align 8
  %159 = call i32 @MLX4_GET(i32 %157, i32* %158, i32 48)
  %160 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %161 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 @MLX4_GET(i32 %162, i32* %163, i32 56)
  %165 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %166 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @MLX4_GET(i32 %167, i32* %168, i32 60)
  %170 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %171 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 6
  %174 = mul nsw i32 %173, 2
  %175 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %176 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 4
  %177 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %178 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %179 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %183 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %186 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (%struct.mlx4_dev*, i8*, i64, ...) @mlx4_dbg(%struct.mlx4_dev* %177, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i64 %181, i32 %184, i32 %187)
  %189 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %190 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %7, align 8
  %193 = call i32 @MLX4_GET(i32 %191, i32* %192, i32 0)
  %194 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %195 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %7, align 8
  %198 = call i32 @MLX4_GET(i32 %196, i32* %197, i32 32)
  %199 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %200 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %7, align 8
  %203 = call i32 @MLX4_GET(i32 %201, i32* %202, i32 40)
  %204 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %205 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = ashr i32 %206, 6
  %208 = mul nsw i32 %207, 2
  %209 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %210 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %209, i32 0, i32 5
  store i32 %208, i32* %210, align 4
  %211 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %212 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %7, align 8
  %215 = call i32 @MLX4_GET(i32 %213, i32* %214, i32 64)
  %216 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %217 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %7, align 8
  %220 = call i32 @MLX4_GET(i32 %218, i32* %219, i32 72)
  %221 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %222 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 4
  %224 = ashr i32 %223, 6
  %225 = mul nsw i32 %224, 2
  %226 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %227 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %226, i32 0, i32 7
  store i32 %225, i32* %227, align 4
  %228 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %229 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %230 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %234 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 4
  %236 = call i32 (%struct.mlx4_dev*, i8*, i64, ...) @mlx4_dbg(%struct.mlx4_dev* %228, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i64 %232, i32 %235)
  %237 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %238 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %239 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = ashr i32 %240, 2
  %242 = sext i32 %241 to i64
  %243 = call i32 (%struct.mlx4_dev*, i8*, i64, ...) @mlx4_dbg(%struct.mlx4_dev* %237, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i64 %242)
  %244 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %245 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %244, i32 0, i32 8
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** %7, align 8
  %248 = call i32 @MLX4_GET(i32 %246, i32* %247, i32 80)
  %249 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %250 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %249, i32 0, i32 9
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** %7, align 8
  %253 = call i32 @MLX4_GET(i32 %251, i32* %252, i32 88)
  %254 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %255 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %254, i32 0, i32 9
  %256 = load i32, i32* %255, align 4
  %257 = ashr i32 %256, 6
  %258 = mul nsw i32 %257, 2
  %259 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %260 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %259, i32 0, i32 9
  store i32 %258, i32* %260, align 4
  %261 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %262 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %263 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %262, i32 0, i32 9
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %267 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %266, i32 0, i32 8
  %268 = load i32, i32* %267, align 4
  %269 = call i32 (%struct.mlx4_dev*, i8*, i64, ...) @mlx4_dbg(%struct.mlx4_dev* %261, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %265, i32 %268)
  %270 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %271 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @PAGE_SIZE, align 4
  %274 = load i32, i32* @MLX4_ICM_PAGE_SIZE, align 4
  %275 = sdiv i32 %273, %274
  %276 = call i32 @ALIGN(i32 %272, i32 %275)
  %277 = load i32, i32* @PAGE_SHIFT, align 4
  %278 = load i32, i32* @MLX4_ICM_PAGE_SHIFT, align 4
  %279 = sub nsw i32 %277, %278
  %280 = ashr i32 %276, %279
  %281 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %282 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %281, i32 0, i32 3
  store i32 %280, i32* %282, align 4
  %283 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %284 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %285 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = load %struct.mlx4_fw*, %struct.mlx4_fw** %4, align 8
  %289 = getelementptr inbounds %struct.mlx4_fw, %struct.mlx4_fw* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 4
  %291 = call i32 (%struct.mlx4_dev*, i8*, i64, ...) @mlx4_dbg(%struct.mlx4_dev* %283, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i64 %287, i32 %290)
  br label %292

292:                                              ; preds = %124, %85, %72, %40
  %293 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %294 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %295 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %293, %struct.mlx4_cmd_mailbox* %294)
  %296 = load i32, i32* %8, align 4
  store i32 %296, i32* %2, align 4
  br label %297

297:                                              ; preds = %292, %23
  %298 = load i32, i32* %2, align 4
  ret i32 %298
}

declare dso_local %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MLX4_GET(i32, i32*, i32) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i64, ...) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i64, ...) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
