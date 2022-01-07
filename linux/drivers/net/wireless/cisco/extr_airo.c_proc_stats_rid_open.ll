; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_proc_stats_rid_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_proc_stats_rid_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.proc_data* }
%struct.proc_data = type { i32, i32* }
%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@statsLabels = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [48 x i8] c"Potentially disastrous buffer overflow averted!\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Got a short rid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32)* @proc_stats_rid_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_stats_rid_open(%struct.inode* %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc_data*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.airo_info*, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.net_device* @PDE_DATA(%struct.inode* %16)
  store %struct.net_device* %17, %struct.net_device** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %9, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load %struct.airo_info*, %struct.airo_info** %19, align 8
  store %struct.airo_info* %20, %struct.airo_info** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %14, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.proc_data* @kzalloc(i32 16, i32 %23)
  %25 = load %struct.file*, %struct.file** %6, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  store %struct.proc_data* %24, %struct.proc_data** %26, align 8
  %27 = icmp eq %struct.proc_data* %24, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %136

31:                                               ; preds = %3
  %32 = load %struct.file*, %struct.file** %6, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = load %struct.proc_data*, %struct.proc_data** %33, align 8
  store %struct.proc_data* %34, %struct.proc_data** %8, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32* @kmalloc(i32 4096, i32 %35)
  %37 = load %struct.proc_data*, %struct.proc_data** %8, align 8
  %38 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = icmp eq i32* %36, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.file*, %struct.file** %6, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 0
  %43 = load %struct.proc_data*, %struct.proc_data** %42, align 8
  %44 = call i32 @kfree(%struct.proc_data* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %136

47:                                               ; preds = %31
  %48 = load %struct.airo_info*, %struct.airo_info** %10, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @readStatsRid(%struct.airo_info* %48, %struct.TYPE_5__* %11, i32 %49, i32 1)
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @le16_to_cpu(i32 %52)
  store i32 %53, i32* %15, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %117, %47
  %55 = load i8**, i8*** @statsLabels, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, inttoptr (i64 -1 to i8*)
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32, i32* %12, align 4
  %63 = mul nsw i32 %62, 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %63, %64
  br label %66

66:                                               ; preds = %61, %54
  %67 = phi i1 [ false, %54 ], [ %65, %61 ]
  br i1 %67, label %68, label %120

68:                                               ; preds = %66
  %69 = load i8**, i8*** @statsLabels, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  br label %117

76:                                               ; preds = %68
  %77 = load i32, i32* %13, align 4
  %78 = load i8**, i8*** @statsLabels, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = add nsw i32 %77, %83
  %85 = add nsw i32 %84, 16
  %86 = icmp sgt i32 %85, 4096
  br i1 %86, label %87, label %94

87:                                               ; preds = %76
  %88 = load %struct.airo_info*, %struct.airo_info** %10, align 8
  %89 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @airo_print_warn(i32 %92, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %120

94:                                               ; preds = %76
  %95 = load %struct.proc_data*, %struct.proc_data** %8, align 8
  %96 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i8**, i8*** @statsLabels, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = load i32*, i32** %14, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @le32_to_cpu(i32 %110)
  %112 = call i64 @sprintf(i32* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %105, i32 %111)
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %94, %75
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %54

120:                                              ; preds = %87, %66
  %121 = load i32, i32* %12, align 4
  %122 = mul nsw i32 %121, 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load %struct.airo_info*, %struct.airo_info** %10, align 8
  %127 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @airo_print_warn(i32 %130, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %132

132:                                              ; preds = %125, %120
  %133 = load i32, i32* %13, align 4
  %134 = load %struct.proc_data*, %struct.proc_data** %8, align 8
  %135 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %132, %40, %28
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.net_device* @PDE_DATA(%struct.inode*) #1

declare dso_local %struct.proc_data* @kzalloc(i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.proc_data*) #1

declare dso_local i32 @readStatsRid(%struct.airo_info*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @airo_print_warn(i32, i8*) #1

declare dso_local i64 @sprintf(i32*, i8*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
