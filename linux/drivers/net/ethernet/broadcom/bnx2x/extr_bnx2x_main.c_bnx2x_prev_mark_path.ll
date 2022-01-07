; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_prev_mark_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_prev_mark_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bnx2x_prev_path_list = type { i32, i32, i64, i32, i32, i32 }

@bnx2x_prev_sem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Received %d when tried to take lock\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Re-Marking the path.\0A\00", align 1
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Removing AER indication from path %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to allocate 'bnx2x_prev_path_list'\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Marked path [%d] - finished previous unload\0A\00", align 1
@bnx2x_prev_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32)* @bnx2x_prev_mark_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_prev_mark_path(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x_prev_path_list*, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @down_interruptible(i32* @bnx2x_prev_sem)
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %7, align 4
  %13 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %100

15:                                               ; preds = %2
  %16 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %17 = call %struct.bnx2x_prev_path_list* @bnx2x_prev_path_get_entry(%struct.bnx2x* %16)
  store %struct.bnx2x_prev_path_list* %17, %struct.bnx2x_prev_path_list** %6, align 8
  %18 = load %struct.bnx2x_prev_path_list*, %struct.bnx2x_prev_path_list** %6, align 8
  %19 = icmp ne %struct.bnx2x_prev_path_list* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load %struct.bnx2x_prev_path_list*, %struct.bnx2x_prev_path_list** %6, align 8
  %22 = getelementptr inbounds %struct.bnx2x_prev_path_list, %struct.bnx2x_prev_path_list* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %34

27:                                               ; preds = %20
  %28 = load i32, i32* @NETIF_MSG_HW, align 4
  %29 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %30 = call i32 @BP_PATH(%struct.bnx2x* %29)
  %31 = call i32 @DP(i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.bnx2x_prev_path_list*, %struct.bnx2x_prev_path_list** %6, align 8
  %33 = getelementptr inbounds %struct.bnx2x_prev_path_list, %struct.bnx2x_prev_path_list* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %27, %25
  %35 = call i32 @up(i32* @bnx2x_prev_sem)
  store i32 0, i32* %3, align 4
  br label %100

36:                                               ; preds = %15
  %37 = call i32 @up(i32* @bnx2x_prev_sem)
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.bnx2x_prev_path_list* @kmalloc(i32 32, i32 %38)
  store %struct.bnx2x_prev_path_list* %39, %struct.bnx2x_prev_path_list** %6, align 8
  %40 = load %struct.bnx2x_prev_path_list*, %struct.bnx2x_prev_path_list** %6, align 8
  %41 = icmp ne %struct.bnx2x_prev_path_list* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %100

46:                                               ; preds = %36
  %47 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %48 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bnx2x_prev_path_list*, %struct.bnx2x_prev_path_list** %6, align 8
  %55 = getelementptr inbounds %struct.bnx2x_prev_path_list, %struct.bnx2x_prev_path_list* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %57 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PCI_SLOT(i32 %60)
  %62 = load %struct.bnx2x_prev_path_list*, %struct.bnx2x_prev_path_list** %6, align 8
  %63 = getelementptr inbounds %struct.bnx2x_prev_path_list, %struct.bnx2x_prev_path_list* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %65 = call i32 @BP_PATH(%struct.bnx2x* %64)
  %66 = load %struct.bnx2x_prev_path_list*, %struct.bnx2x_prev_path_list** %6, align 8
  %67 = getelementptr inbounds %struct.bnx2x_prev_path_list, %struct.bnx2x_prev_path_list* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.bnx2x_prev_path_list*, %struct.bnx2x_prev_path_list** %6, align 8
  %69 = getelementptr inbounds %struct.bnx2x_prev_path_list, %struct.bnx2x_prev_path_list* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %46
  %73 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %74 = call i32 @BP_PORT(%struct.bnx2x* %73)
  %75 = shl i32 1, %74
  br label %77

76:                                               ; preds = %46
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi i32 [ %75, %72 ], [ 0, %76 ]
  %79 = load %struct.bnx2x_prev_path_list*, %struct.bnx2x_prev_path_list** %6, align 8
  %80 = getelementptr inbounds %struct.bnx2x_prev_path_list, %struct.bnx2x_prev_path_list* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = call i32 @down_interruptible(i32* @bnx2x_prev_sem)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.bnx2x_prev_path_list*, %struct.bnx2x_prev_path_list** %6, align 8
  %88 = call i32 @kfree(%struct.bnx2x_prev_path_list* %87)
  br label %98

89:                                               ; preds = %77
  %90 = load i32, i32* @NETIF_MSG_HW, align 4
  %91 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %92 = call i32 @BP_PATH(%struct.bnx2x* %91)
  %93 = call i32 @DP(i32 %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load %struct.bnx2x_prev_path_list*, %struct.bnx2x_prev_path_list** %6, align 8
  %95 = getelementptr inbounds %struct.bnx2x_prev_path_list, %struct.bnx2x_prev_path_list* %94, i32 0, i32 1
  %96 = call i32 @list_add(i32* %95, i32* @bnx2x_prev_list)
  %97 = call i32 @up(i32* @bnx2x_prev_sem)
  br label %98

98:                                               ; preds = %89, %84
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %42, %34, %11
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @down_interruptible(i32*) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local %struct.bnx2x_prev_path_list* @bnx2x_prev_path_get_entry(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local %struct.bnx2x_prev_path_list* @kmalloc(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @kfree(%struct.bnx2x_prev_path_list*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
