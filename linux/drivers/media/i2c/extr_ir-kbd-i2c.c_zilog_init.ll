; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ir-kbd-i2c.c_zilog_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ir-kbd-i2c.c_zilog_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.code_block = type { i32, i32* }
%struct.IR_i2c = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@__const.zilog_init.code_block = private unnamed_addr constant %struct.code_block { i32 16, i32* null }, align 8
@ZILOG_INIT_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to retrieve firmware version: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Zilog/Hauppauge IR blaster firmware version %d.%d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*)* @zilog_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zilog_init(%struct.IR_i2c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.IR_i2c*, align 8
  %4 = alloca %struct.code_block, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.IR_i2c* %0, %struct.IR_i2c** %3, align 8
  %7 = bitcast %struct.code_block* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.code_block* @__const.zilog_init.code_block to i8*), i64 16, i1 false)
  %8 = getelementptr inbounds %struct.code_block, %struct.code_block* %4, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 3
  %11 = call i32 @put_unaligned_be16(i32 4096, i32* %10)
  %12 = load %struct.IR_i2c*, %struct.IR_i2c** %3, align 8
  %13 = load i32, i32* @ZILOG_INIT_END, align 4
  %14 = call i32 @send_data_block(%struct.IR_i2c* %12, i32 %13, %struct.code_block* %4)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %55

19:                                               ; preds = %1
  %20 = load %struct.IR_i2c*, %struct.IR_i2c** %3, align 8
  %21 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %24 = call i32 @i2c_master_recv(i32 %22, i32* %23, i32 4)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 4
  br i1 %26, label %27, label %43

27:                                               ; preds = %19
  %28 = load %struct.IR_i2c*, %struct.IR_i2c** %3, align 8
  %29 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  br label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi i32 [ %37, %36 ], [ %40, %38 ]
  store i32 %42, i32* %2, align 4
  br label %55

43:                                               ; preds = %19
  %44 = load %struct.IR_i2c*, %struct.IR_i2c** %3, align 8
  %45 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_info(i32* %47, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %51, i32 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %43, %41, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @put_unaligned_be16(i32, i32*) #2

declare dso_local i32 @send_data_block(%struct.IR_i2c*, i32, %struct.code_block*) #2

declare dso_local i32 @i2c_master_recv(i32, i32*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
