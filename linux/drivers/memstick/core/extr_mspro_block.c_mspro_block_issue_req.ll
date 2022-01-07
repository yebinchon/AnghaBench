; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_issue_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_issue_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { i32 }
%struct.mspro_block_data = type { i64, i32, %struct.TYPE_8__*, i32 (%struct.memstick_dev.0*, i32, i32)*, i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.memstick_dev.0 = type opaque

@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@MSPRO_CMD_READ_DATA = common dso_local global i32 0, align 4
@MSPRO_CMD_WRITE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_dev*)* @mspro_block_issue_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspro_block_issue_req(%struct.memstick_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.memstick_dev*, align 8
  %4 = alloca %struct.mspro_block_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.memstick_dev* %0, %struct.memstick_dev** %3, align 8
  %9 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %10 = call %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev* %9)
  store %struct.mspro_block_data* %10, %struct.mspro_block_data** %4, align 8
  br label %11

11:                                               ; preds = %1, %47
  %12 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %13 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %12, i32 0, i32 7
  store i64 0, i64* %13, align 8
  %14 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %15 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %17 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %22 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %25 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @blk_rq_map_sg(i32 %20, %struct.TYPE_8__* %23, i32 %26)
  %28 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %29 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %31 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %11
  %35 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %36 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %35, i32 0, i32 2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = call i32 @blk_rq_cur_bytes(%struct.TYPE_8__* %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %40 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load i32, i32* @BLK_STS_RESOURCE, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @blk_update_request(%struct.TYPE_8__* %41, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %11

48:                                               ; preds = %34
  %49 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %50 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load i32, i32* @BLK_STS_RESOURCE, align 4
  %53 = call i32 @__blk_mq_end_request(%struct.TYPE_8__* %51, i32 %52)
  %54 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %55 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %54, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %55, align 8
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %100

58:                                               ; preds = %11
  %59 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %60 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = call i32 @blk_rq_pos(%struct.TYPE_8__* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = shl i32 %63, 9
  store i32 %64, i32* %5, align 4
  %65 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %66 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = call i32 @blk_rq_bytes(%struct.TYPE_8__* %67)
  store i32 %68, i32* %6, align 4
  %69 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %70 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %69, i32 0, i32 3
  %71 = load i32 (%struct.memstick_dev.0*, i32, i32)*, i32 (%struct.memstick_dev.0*, i32, i32)** %70, align 8
  %72 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %73 = bitcast %struct.memstick_dev* %72 to %struct.memstick_dev.0*
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 %71(%struct.memstick_dev.0* %73, i32 %74, i32 %75)
  %77 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %78 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %77, i32 0, i32 2
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = call i64 @rq_data_dir(%struct.TYPE_8__* %79)
  %81 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %82 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %84 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @READ, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %58
  %89 = load i32, i32* @MSPRO_CMD_READ_DATA, align 4
  br label %92

90:                                               ; preds = %58
  %91 = load i32, i32* @MSPRO_CMD_WRITE_DATA, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %95 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %97 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @memstick_new_req(i32 %98)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %92, %48
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

declare dso_local i32 @blk_rq_map_sg(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @blk_rq_cur_bytes(%struct.TYPE_8__*) #1

declare dso_local i32 @blk_update_request(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @__blk_mq_end_request(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.TYPE_8__*) #1

declare dso_local i32 @blk_rq_bytes(%struct.TYPE_8__*) #1

declare dso_local i64 @rq_data_dir(%struct.TYPE_8__*) #1

declare dso_local i32 @memstick_new_req(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
