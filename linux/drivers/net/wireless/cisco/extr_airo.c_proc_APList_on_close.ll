; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_proc_APList_on_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_proc_APList_on_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.proc_data* }
%struct.proc_data = type { i32, i64 }
%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.file*)* @proc_APList_on_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_APList_on_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.proc_data*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.airo_info*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.proc_data*, %struct.proc_data** %11, align 8
  store %struct.proc_data* %12, %struct.proc_data** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call %struct.net_device* @PDE_DATA(%struct.inode* %13)
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.airo_info*, %struct.airo_info** %16, align 8
  store %struct.airo_info* %17, %struct.airo_info** %7, align 8
  %18 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %19 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %18, i32 0, i32 0
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %8, align 8
  %20 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %21 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %73

25:                                               ; preds = %2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = call i32 @memset(%struct.TYPE_4__* %26, i32 0, i32 16)
  %28 = call i32 @cpu_to_le16(i32 16)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %62, %25
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %36 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  %40 = mul nsw i32 %39, 6
  %41 = mul nsw i32 %40, 3
  %42 = icmp sge i32 %37, %41
  br label %43

43:                                               ; preds = %34, %31
  %44 = phi i1 [ false, %31 ], [ %42, %34 ]
  br i1 %44, label %45, label %65

45:                                               ; preds = %43
  %46 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %47 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = mul nsw i32 %49, 6
  %51 = mul nsw i32 %50, 3
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %48, %52
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mac_pton(i64 %53, i32 %60)
  br label %62

62:                                               ; preds = %45
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %31

65:                                               ; preds = %43
  %66 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %67 = call i32 @disable_MAC(%struct.airo_info* %66, i32 1)
  %68 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = call i32 @writeAPListRid(%struct.airo_info* %68, %struct.TYPE_4__* %69, i32 1)
  %71 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %72 = call i32 @enable_MAC(%struct.airo_info* %71, i32 1)
  br label %73

73:                                               ; preds = %65, %24
  ret void
}

declare dso_local %struct.net_device* @PDE_DATA(%struct.inode*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @mac_pton(i64, i32) #1

declare dso_local i32 @disable_MAC(%struct.airo_info*, i32) #1

declare dso_local i32 @writeAPListRid(%struct.airo_info*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @enable_MAC(%struct.airo_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
