; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_i2c.c_mlxsw_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_i2c.c_mlxsw_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.mlxsw_i2c = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i64, i32* }

@MLXSW_I2C_TIMEOUT_MSECS = common dso_local global i32 0, align 4
@MLXSW_I2C_PUSH_CMD_SIZE = common dso_local global i32 0, align 4
@MLXSW_I2C_ADDR_BUF_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_I2C_ADDR_WIDTH = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@MLXSW_I2C_RETRY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Could not start transaction\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"HW semaphore is not released\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Bad transaction completion status %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64, i32*, i32, i32*)* @mlxsw_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_i2c_write(%struct.device* %0, i64 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.mlxsw_i2c*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.i2c_msg, align 8
  %22 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = call %struct.i2c_client* @to_i2c_client(%struct.device* %23)
  store %struct.i2c_client* %24, %struct.i2c_client** %12, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %26 = call %struct.mlxsw_i2c* @i2c_get_clientdata(%struct.i2c_client* %25)
  store %struct.mlxsw_i2c* %26, %struct.mlxsw_i2c** %13, align 8
  %27 = load i32, i32* @MLXSW_I2C_TIMEOUT_MSECS, align 4
  %28 = call i64 @msecs_to_jiffies(i32 %27)
  store i64 %28, i64* %14, align 8
  %29 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %13, align 8
  %30 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %15, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %34 = load i32, i32* @MLXSW_I2C_PUSH_CMD_SIZE, align 4
  %35 = call { i64, i32* } @MLXSW_I2C_WRITE_MSG(%struct.i2c_client* %33, i32* null, i32 %34)
  %36 = bitcast %struct.i2c_msg* %21 to { i64, i32* }*
  %37 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %36, i32 0, i32 0
  %38 = extractvalue { i64, i32* } %35, 0
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %36, i32 0, i32 1
  %40 = extractvalue { i64, i32* } %35, 1
  store i32* %40, i32** %39, align 8
  %41 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %13, align 8
  %42 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MLXSW_I2C_ADDR_BUF_SIZE, align 8
  %45 = add i64 %43, %44
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i32* @kmalloc(i64 %45, i32 %46)
  store i32* %47, i32** %20, align 8
  %48 = load i32*, i32** %20, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %5
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %182

53:                                               ; preds = %5
  %54 = load i32*, i32** %20, align 8
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 1
  store i32* %54, i32** %55, align 8
  store i32 0, i32* %17, align 4
  br label %56

56:                                               ; preds = %139, %53
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %142

60:                                               ; preds = %56
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %13, align 8
  %63 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ugt i64 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %13, align 8
  %68 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  br label %72

70:                                               ; preds = %60
  %71 = load i64, i64* %8, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi i64 [ %69, %66 ], [ %71, %70 ]
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %16, align 4
  %75 = load i64, i64* @MLXSW_I2C_ADDR_WIDTH, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  store i64 %78, i64* %79, align 8
  %80 = load i32*, i32** %20, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @mlxsw_i2c_set_slave_addr(i32* %80, i32 %81)
  %83 = load i32*, i32** %20, align 8
  %84 = load i64, i64* @MLXSW_I2C_ADDR_BUF_SIZE, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32*, i32** %9, align 8
  %87 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %13, align 8
  %88 = getelementptr inbounds %struct.mlxsw_i2c, %struct.mlxsw_i2c* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %89, %91
  %93 = getelementptr inbounds i32, i32* %86, i64 %92
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @memcpy(i32* %85, i32* %93, i32 %94)
  store i32 0, i32* %18, align 4
  %96 = load i64, i64* @jiffies, align 8
  %97 = load i64, i64* %14, align 8
  %98 = add i64 %96, %97
  store i64 %98, i64* %19, align 8
  br label %99

99:                                               ; preds = %119, %72
  %100 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @i2c_transfer(i32 %102, %struct.i2c_msg* %21, i32 1)
  store i32 %103, i32* %22, align 4
  %104 = load i32, i32* %22, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %121

107:                                              ; preds = %99
  %108 = call i32 (...) @cond_resched()
  br label %109

109:                                              ; preds = %107
  %110 = load i64, i64* @jiffies, align 8
  %111 = load i64, i64* %19, align 8
  %112 = call i64 @time_before(i64 %110, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* @MLXSW_I2C_RETRY, align 4
  %118 = icmp slt i32 %115, %117
  br label %119

119:                                              ; preds = %114, %109
  %120 = phi i1 [ true, %109 ], [ %118, %114 ]
  br i1 %120, label %99, label %121

121:                                              ; preds = %119, %106
  %122 = load i32, i32* %22, align 4
  %123 = icmp ne i32 %122, 1
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i32, i32* %22, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %22, align 4
  br label %178

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %121
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %8, align 8
  %138 = sub i64 %137, %136
  store i64 %138, i64* %8, align 8
  br label %139

139:                                              ; preds = %131
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %17, align 4
  br label %56

142:                                              ; preds = %56
  %143 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %144 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %13, align 8
  %145 = call i32 @mlxsw_i2c_write_cmd(%struct.i2c_client* %143, %struct.mlxsw_i2c* %144, i32 0)
  store i32 %145, i32* %22, align 4
  %146 = load i32, i32* %22, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 0
  %151 = call i32 (i32*, i8*, ...) @dev_err(i32* %150, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %152 = load i32, i32* @EIO, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %22, align 4
  br label %178

154:                                              ; preds = %142
  %155 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %156 = load %struct.mlxsw_i2c*, %struct.mlxsw_i2c** %13, align 8
  %157 = load i32*, i32** %11, align 8
  %158 = call i32 @mlxsw_i2c_wait_go_bit(%struct.i2c_client* %155, %struct.mlxsw_i2c* %156, i32* %157)
  store i32 %158, i32* %22, align 4
  %159 = load i32, i32* %22, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %163 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %162, i32 0, i32 0
  %164 = call i32 (i32*, i8*, ...) @dev_err(i32* %163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %178

165:                                              ; preds = %154
  %166 = load i32*, i32** %11, align 8
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %165
  %170 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %171 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %170, i32 0, i32 0
  %172 = load i32*, i32** %11, align 8
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i32*, i8*, ...) @dev_err(i32* %171, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @EIO, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %22, align 4
  br label %177

177:                                              ; preds = %169, %165
  br label %178

178:                                              ; preds = %177, %161, %148, %127
  %179 = load i32*, i32** %20, align 8
  %180 = call i32 @kfree(i32* %179)
  %181 = load i32, i32* %22, align 4
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %178, %50
  %183 = load i32, i32* %6, align 4
  ret i32 %183
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.mlxsw_i2c* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local { i64, i32* } @MLXSW_I2C_WRITE_MSG(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @mlxsw_i2c_set_slave_addr(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @mlxsw_i2c_write_cmd(%struct.i2c_client*, %struct.mlxsw_i2c*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mlxsw_i2c_wait_go_bit(%struct.i2c_client*, %struct.mlxsw_i2c*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
