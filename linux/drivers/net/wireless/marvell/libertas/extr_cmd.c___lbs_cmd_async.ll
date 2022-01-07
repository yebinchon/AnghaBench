; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c___lbs_cmd_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c___lbs_cmd_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_ctrl_node = type { i32 (%struct.lbs_private*, i64, %struct.cmd_header*)*, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i8*, i8* }
%struct.lbs_private = type { i32, i64, i32, i64 }
%struct.cmd_header = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"PREP_CMD: card removed\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"command not allowed in deep sleep\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"PREP_CMD: cmdnode is NULL\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"PREP_CMD: command 0x%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_ctrl_node* @__lbs_cmd_async(%struct.lbs_private* %0, i32 %1, %struct.cmd_header* %2, i32 %3, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)* %4, i64 %5) #0 {
  %7 = alloca %struct.lbs_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmd_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.lbs_private*, i64, %struct.cmd_header*)*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cmd_ctrl_node*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.cmd_header* %2, %struct.cmd_header** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 (%struct.lbs_private*, i64, %struct.cmd_header*)* %4, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = call i32 (i8*, ...) @lbs_deb_host(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.cmd_ctrl_node* @ERR_PTR(i32 %21)
  store %struct.cmd_ctrl_node* %22, %struct.cmd_ctrl_node** %13, align 8
  br label %91

23:                                               ; preds = %6
  %24 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %25 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %23
  %29 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %30 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.cmd_ctrl_node* @ERR_PTR(i32 %36)
  store %struct.cmd_ctrl_node* %37, %struct.cmd_ctrl_node** %13, align 8
  br label %91

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %23
  %40 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %41 = call %struct.cmd_ctrl_node* @lbs_get_free_cmd_node(%struct.lbs_private* %40)
  store %struct.cmd_ctrl_node* %41, %struct.cmd_ctrl_node** %13, align 8
  %42 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %43 = icmp eq %struct.cmd_ctrl_node* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @lbs_deb_host(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %47 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %46, i32 0, i32 0
  %48 = call i32 @wake_up(i32* %47)
  %49 = load i32, i32* @ENOBUFS, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.cmd_ctrl_node* @ERR_PTR(i32 %50)
  store %struct.cmd_ctrl_node* %51, %struct.cmd_ctrl_node** %13, align 8
  br label %91

52:                                               ; preds = %39
  %53 = load i32 (%struct.lbs_private*, i64, %struct.cmd_header*)*, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)** %11, align 8
  %54 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %55 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %54, i32 0, i32 0
  store i32 (%struct.lbs_private*, i64, %struct.cmd_header*)* %53, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)** %55, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %58 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %60 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load %struct.cmd_header*, %struct.cmd_header** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @memcpy(%struct.TYPE_2__* %61, %struct.cmd_header* %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = call i8* @cpu_to_le16(i32 %65)
  %67 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %68 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i8* %66, i8** %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i8* @cpu_to_le16(i32 %71)
  %73 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %74 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i8* %72, i8** %76, align 8
  %77 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %78 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 (i8*, ...) @lbs_deb_host(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %84 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %86 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %87 = call i32 @lbs_queue_cmd(%struct.lbs_private* %85, %struct.cmd_ctrl_node* %86)
  %88 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %89 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %88, i32 0, i32 0
  %90 = call i32 @wake_up(i32* %89)
  br label %91

91:                                               ; preds = %52, %44, %33, %18
  %92 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  ret %struct.cmd_ctrl_node* %92
}

declare dso_local i32 @lbs_deb_host(i8*, ...) #1

declare dso_local %struct.cmd_ctrl_node* @ERR_PTR(i32) #1

declare dso_local i32 @lbs_deb_cmd(i8*) #1

declare dso_local %struct.cmd_ctrl_node* @lbs_get_free_cmd_node(%struct.lbs_private*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.cmd_header*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_queue_cmd(%struct.lbs_private*, %struct.cmd_ctrl_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
