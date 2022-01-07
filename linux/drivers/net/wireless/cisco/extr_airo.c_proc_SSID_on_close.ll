; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_proc_SSID_on_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_proc_SSID_on_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.proc_data* }
%struct.proc_data = type { i8*, i32 }
%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { i32 }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.file*)* @proc_SSID_on_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_SSID_on_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.proc_data*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.airo_info*, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.proc_data*, %struct.proc_data** %14, align 8
  store %struct.proc_data* %15, %struct.proc_data** %5, align 8
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call %struct.net_device* @PDE_DATA(%struct.inode* %16)
  store %struct.net_device* %17, %struct.net_device** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load %struct.airo_info*, %struct.airo_info** %19, align 8
  store %struct.airo_info* %20, %struct.airo_info** %7, align 8
  %21 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %22 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %26 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  store i8* %29, i8** %11, align 8
  %30 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %31 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  br label %111

35:                                               ; preds = %2
  %36 = load i8*, i8** %11, align 8
  store i8 10, i8* %36, align 1
  %37 = call i32 @memset(%struct.TYPE_6__* %8, i32 0, i32 16)
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %95, %35
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ult i8* %42, %43
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ false, %38 ], [ %44, %41 ]
  br i1 %46, label %47, label %98

47:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %58, %47
  %49 = load i8*, i8** %10, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 10
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 32
  br label %56

56:                                               ; preds = %53, %48
  %57 = phi i1 [ false, %48 ], [ %55, %53 ]
  br i1 %57, label %58, label %74

58:                                               ; preds = %56
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %10, align 8
  %61 = load i8, i8* %59, align 1
  %62 = sext i8 %61 to i32
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32 %62, i32* %73, align 4
  br label %48

74:                                               ; preds = %56
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %98

78:                                               ; preds = %74
  %79 = load i32, i32* %12, align 4
  %80 = call i8* @cpu_to_le16(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i8* %80, i8** %86, align 8
  br label %87

87:                                               ; preds = %93, %78
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %10, align 8
  %90 = load i8, i8* %88, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 10
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %87

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %38

98:                                               ; preds = %77, %45
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = call i8* @cpu_to_le16(i32 16)
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i8* %102, i8** %103, align 8
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %106 = call i32 @disable_MAC(%struct.airo_info* %105, i32 1)
  %107 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %108 = call i32 @writeSsidRid(%struct.airo_info* %107, %struct.TYPE_6__* %8, i32 1)
  %109 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %110 = call i32 @enable_MAC(%struct.airo_info* %109, i32 1)
  br label %111

111:                                              ; preds = %104, %34
  ret void
}

declare dso_local %struct.net_device* @PDE_DATA(%struct.inode*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @disable_MAC(%struct.airo_info*, i32) #1

declare dso_local i32 @writeSsidRid(%struct.airo_info*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @enable_MAC(%struct.airo_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
