; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_cmd_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_cmd_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i32, i64, i32, i32, i8*, i64, i8*, i64, i64*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Cmd exec (opcode=%x(%s),opcode_mod=%x,in_mod=%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Input mailbox:\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Output mailbox:\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MLXSW_CMD_STATUS_RUNNING_RESET = common dso_local global i64 0, align 8
@MLXSW_CMD_STATUS_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [71 x i8] c"Cmd exec failed (opcode=%x(%s),opcode_mod=%x,in_mod=%x,status=%x(%s))\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"Cmd exec timed-out (opcode=%x(%s),opcode_mod=%x,in_mod=%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_cmd_exec(%struct.mlxsw_core* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5, i8* %6, i64 %7, i8* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlxsw_core*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %12, align 8
  store i32 %1, i32* %13, align 4
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i64 %7, i64* %19, align 8
  store i8* %8, i8** %20, align 8
  store i64 %9, i64* %21, align 8
  %24 = load i64, i64* %19, align 8
  %25 = urem i64 %24, 4
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %10
  %28 = load i64, i64* %21, align 8
  %29 = urem i64 %28, 4
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %10
  %32 = phi i1 [ true, %10 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.mlxsw_core*, %struct.mlxsw_core** %12, align 8
  %36 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (i32, i32, i64, i32, i32, i8*, i64, i8*, i64, i64*)*, i32 (i32, i32, i64, i32, i32, i8*, i64, i8*, i64, i64*)** %38, align 8
  %40 = icmp ne i32 (i32, i32, i64, i32, i32, i8*, i64, i8*, i64, i64*)* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %11, align 4
  br label %161

44:                                               ; preds = %31
  %45 = load %struct.mlxsw_core*, %struct.mlxsw_core** %12, align 8
  %46 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @mlxsw_cmd_opcode_str(i32 %51)
  %53 = load i64, i64* %14, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i32 (i32, i8*, ...) @dev_dbg(i32 %49, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %52, i64 %53, i32 %54)
  %56 = load i8*, i8** %18, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %44
  %59 = load %struct.mlxsw_core*, %struct.mlxsw_core** %12, align 8
  %60 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @dev_dbg(i32 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.mlxsw_core*, %struct.mlxsw_core** %12, align 8
  %66 = load i8*, i8** %18, align 8
  %67 = load i64, i64* %19, align 8
  %68 = call i32 @mlxsw_core_buf_dump_dbg(%struct.mlxsw_core* %65, i8* %66, i64 %67)
  br label %69

69:                                               ; preds = %58, %44
  %70 = load %struct.mlxsw_core*, %struct.mlxsw_core** %12, align 8
  %71 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32 (i32, i32, i64, i32, i32, i8*, i64, i8*, i64, i64*)*, i32 (i32, i32, i64, i32, i32, i8*, i64, i8*, i64, i64*)** %73, align 8
  %75 = load %struct.mlxsw_core*, %struct.mlxsw_core** %12, align 8
  %76 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i64, i64* %14, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i8*, i8** %18, align 8
  %83 = load i64, i64* %19, align 8
  %84 = load i8*, i8** %20, align 8
  %85 = load i64, i64* %21, align 8
  %86 = call i32 %74(i32 %77, i32 %78, i64 %79, i32 %80, i32 %81, i8* %82, i64 %83, i8* %84, i64 %85, i64* %22)
  store i32 %86, i32* %23, align 4
  %87 = load i32, i32* %23, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %69
  %90 = load i8*, i8** %20, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load %struct.mlxsw_core*, %struct.mlxsw_core** %12, align 8
  %94 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, ...) @dev_dbg(i32 %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.mlxsw_core*, %struct.mlxsw_core** %12, align 8
  %100 = load i8*, i8** %20, align 8
  %101 = load i64, i64* %21, align 8
  %102 = call i32 @mlxsw_core_buf_dump_dbg(%struct.mlxsw_core* %99, i8* %100, i64 %101)
  br label %103

103:                                              ; preds = %92, %89, %69
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load i32, i32* %23, align 4
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i64, i64* %22, align 8
  %113 = load i64, i64* @MLXSW_CMD_STATUS_RUNNING_RESET, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 0, i32* %23, align 4
  br label %159

116:                                              ; preds = %111, %106, %103
  %117 = load i32, i32* %23, align 4
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %116
  %122 = load i64, i64* %22, align 8
  %123 = load i64, i64* @MLXSW_CMD_STATUS_OK, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %121
  %126 = load %struct.mlxsw_core*, %struct.mlxsw_core** %12, align 8
  %127 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @mlxsw_cmd_opcode_str(i32 %132)
  %134 = load i64, i64* %14, align 8
  %135 = load i32, i32* %15, align 4
  %136 = load i64, i64* %22, align 8
  %137 = load i64, i64* %22, align 8
  %138 = call i32 @mlxsw_cmd_status_str(i64 %137)
  %139 = call i32 (i32, i8*, i32, i32, i64, i32, ...) @dev_err(i32 %130, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %131, i32 %133, i64 %134, i32 %135, i64 %136, i32 %138)
  br label %158

140:                                              ; preds = %121, %116
  %141 = load i32, i32* %23, align 4
  %142 = load i32, i32* @ETIMEDOUT, align 4
  %143 = sub nsw i32 0, %142
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %140
  %146 = load %struct.mlxsw_core*, %struct.mlxsw_core** %12, align 8
  %147 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @mlxsw_cmd_opcode_str(i32 %152)
  %154 = load i64, i64* %14, align 8
  %155 = load i32, i32* %15, align 4
  %156 = call i32 (i32, i8*, i32, i32, i64, i32, ...) @dev_err(i32 %150, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %151, i32 %153, i64 %154, i32 %155)
  br label %157

157:                                              ; preds = %145, %140
  br label %158

158:                                              ; preds = %157, %125
  br label %159

159:                                              ; preds = %158, %115
  %160 = load i32, i32* %23, align 4
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %159, %41
  %162 = load i32, i32* %11, align 4
  ret i32 %162
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mlxsw_cmd_opcode_str(i32) #1

declare dso_local i32 @mlxsw_core_buf_dump_dbg(%struct.mlxsw_core*, i8*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i64, i32, ...) #1

declare dso_local i32 @mlxsw_cmd_status_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
