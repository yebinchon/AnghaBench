; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c___lbtf_cmd_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c___lbtf_cmd_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_ctrl_node = type { i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)*, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i8*, i8*, i8* }
%struct.lbtf_private = type { i32, i32, i64 }
%struct.cmd_header = type { i32 }

@LBTF_DEB_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"PREP_CMD: card removed\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"PREP_CMD: cmdnode is NULL\0A\00", align 1
@lbtf_wq = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"PREP_CMD: command 0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ret %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_ctrl_node* (%struct.lbtf_private*, i32, %struct.cmd_header*, i32, i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)*, i64)* @__lbtf_cmd_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_ctrl_node* @__lbtf_cmd_async(%struct.lbtf_private* %0, i32 %1, %struct.cmd_header* %2, i32 %3, i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)* %4, i64 %5) #0 {
  %7 = alloca %struct.lbtf_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmd_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cmd_ctrl_node*, align 8
  store %struct.lbtf_private* %0, %struct.lbtf_private** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.cmd_header* %2, %struct.cmd_header** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)* %4, i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i32, i32* @LBTF_DEB_HOST, align 4
  %15 = call i32 @lbtf_deb_enter(i32 %14)
  %16 = load %struct.lbtf_private*, %struct.lbtf_private** %7, align 8
  %17 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = call i32 (i8*, ...) @lbtf_deb_host(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.cmd_ctrl_node* @ERR_PTR(i32 %23)
  store %struct.cmd_ctrl_node* %24, %struct.cmd_ctrl_node** %13, align 8
  br label %91

25:                                               ; preds = %6
  %26 = load %struct.lbtf_private*, %struct.lbtf_private** %7, align 8
  %27 = call %struct.cmd_ctrl_node* @lbtf_get_cmd_ctrl_node(%struct.lbtf_private* %26)
  store %struct.cmd_ctrl_node* %27, %struct.cmd_ctrl_node** %13, align 8
  %28 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %29 = icmp eq %struct.cmd_ctrl_node* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @lbtf_deb_host(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @lbtf_wq, align 4
  %33 = load %struct.lbtf_private*, %struct.lbtf_private** %7, align 8
  %34 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %33, i32 0, i32 1
  %35 = call i32 @queue_work(i32 %32, i32* %34)
  %36 = load i32, i32* @ENOBUFS, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.cmd_ctrl_node* @ERR_PTR(i32 %37)
  store %struct.cmd_ctrl_node* %38, %struct.cmd_ctrl_node** %13, align 8
  br label %91

39:                                               ; preds = %25
  %40 = load i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)*, i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)** %11, align 8
  %41 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %42 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %41, i32 0, i32 0
  store i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)* %40, i32 (%struct.lbtf_private*, i64, %struct.cmd_header*)** %42, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %45 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %47 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load %struct.cmd_header*, %struct.cmd_header** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @memcpy(%struct.TYPE_2__* %48, %struct.cmd_header* %49, i32 %50)
  %52 = load %struct.lbtf_private*, %struct.lbtf_private** %7, align 8
  %53 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i8* @cpu_to_le16(i32 %56)
  %58 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %59 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i8* %57, i8** %61, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i8* @cpu_to_le16(i32 %62)
  %64 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %65 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i8* %63, i8** %67, align 8
  %68 = load %struct.lbtf_private*, %struct.lbtf_private** %7, align 8
  %69 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @cpu_to_le16(i32 %70)
  %72 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %73 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i8* %71, i8** %75, align 8
  %76 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %77 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 (i8*, ...) @lbtf_deb_host(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %83 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load %struct.lbtf_private*, %struct.lbtf_private** %7, align 8
  %85 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %86 = call i32 @lbtf_queue_cmd(%struct.lbtf_private* %84, %struct.cmd_ctrl_node* %85)
  %87 = load i32, i32* @lbtf_wq, align 4
  %88 = load %struct.lbtf_private*, %struct.lbtf_private** %7, align 8
  %89 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %88, i32 0, i32 1
  %90 = call i32 @queue_work(i32 %87, i32* %89)
  br label %91

91:                                               ; preds = %39, %30, %20
  %92 = load i32, i32* @LBTF_DEB_HOST, align 4
  %93 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %94 = call i32 @lbtf_deb_leave_args(i32 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.cmd_ctrl_node* %93)
  %95 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  ret %struct.cmd_ctrl_node* %95
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @lbtf_deb_host(i8*, ...) #1

declare dso_local %struct.cmd_ctrl_node* @ERR_PTR(i32) #1

declare dso_local %struct.cmd_ctrl_node* @lbtf_get_cmd_ctrl_node(%struct.lbtf_private*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.cmd_header*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbtf_queue_cmd(%struct.lbtf_private*, %struct.cmd_ctrl_node*) #1

declare dso_local i32 @lbtf_deb_leave_args(i32, i8*, %struct.cmd_ctrl_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
