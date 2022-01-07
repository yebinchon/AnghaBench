; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil6210_debugfs_init_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil6210_debugfs_init_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.dentry = type { i32 }
%struct.dbg_off = type { i32, i32, i32, i64 }

@wil_fops_ulong = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*, %struct.dentry*, i8*, %struct.dbg_off*)* @wil6210_debugfs_init_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil6210_debugfs_init_offset(%struct.wil6210_priv* %0, %struct.dentry* %1, i8* %2, %struct.dbg_off* %3) #0 {
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dbg_off*, align 8
  %9 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.dbg_off* %3, %struct.dbg_off** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %147, %4
  %11 = load %struct.dbg_off*, %struct.dbg_off** %8, align 8
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %11, i64 %13
  %15 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %150

18:                                               ; preds = %10
  %19 = load %struct.dbg_off*, %struct.dbg_off** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %19, i64 %21
  %23 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %146 [
    i32 131, label %25
    i32 128, label %49
    i32 129, label %73
    i32 132, label %97
    i32 130, label %122
  ]

25:                                               ; preds = %18
  %26 = load %struct.dbg_off*, %struct.dbg_off** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %26, i64 %28
  %30 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.dbg_off*, %struct.dbg_off** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %32, i64 %34
  %36 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dentry*, %struct.dentry** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.dbg_off*, %struct.dbg_off** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %40, i64 %42
  %44 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %39, i64 %46
  %48 = call i32 @debugfs_create_u32(i64 %31, i32 %37, %struct.dentry* %38, i8* %47)
  br label %146

49:                                               ; preds = %18
  %50 = load %struct.dbg_off*, %struct.dbg_off** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %50, i64 %52
  %54 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.dbg_off*, %struct.dbg_off** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %56, i64 %58
  %60 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.dentry*, %struct.dentry** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load %struct.dbg_off*, %struct.dbg_off** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %64, i64 %66
  %68 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %63, i64 %70
  %72 = call i32 @debugfs_create_x32(i64 %55, i32 %61, %struct.dentry* %62, i8* %71)
  br label %146

73:                                               ; preds = %18
  %74 = load %struct.dbg_off*, %struct.dbg_off** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %74, i64 %76
  %78 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.dbg_off*, %struct.dbg_off** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %80, i64 %82
  %84 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.dentry*, %struct.dentry** %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.dbg_off*, %struct.dbg_off** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %88, i64 %90
  %92 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr i8, i8* %87, i64 %94
  %96 = call i32 @debugfs_create_file_unsafe(i64 %79, i32 %85, %struct.dentry* %86, i8* %95, i32* @wil_fops_ulong)
  br label %146

97:                                               ; preds = %18
  %98 = load %struct.dbg_off*, %struct.dbg_off** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %98, i64 %100
  %102 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.dbg_off*, %struct.dbg_off** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %104, i64 %106
  %108 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.dentry*, %struct.dentry** %6, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load %struct.dbg_off*, %struct.dbg_off** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %112, i64 %114
  %116 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr i8, i8* %111, i64 %118
  %120 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %121 = call i32 @wil_debugfs_create_iomem_x32(i64 %103, i32 %109, %struct.dentry* %110, i8* %119, %struct.wil6210_priv* %120)
  br label %146

122:                                              ; preds = %18
  %123 = load %struct.dbg_off*, %struct.dbg_off** %8, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %123, i64 %125
  %127 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.dbg_off*, %struct.dbg_off** %8, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %129, i64 %131
  %133 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.dentry*, %struct.dentry** %6, align 8
  %136 = load i8*, i8** %7, align 8
  %137 = load %struct.dbg_off*, %struct.dbg_off** %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %137, i64 %139
  %141 = getelementptr inbounds %struct.dbg_off, %struct.dbg_off* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr i8, i8* %136, i64 %143
  %145 = call i32 @debugfs_create_u8(i64 %128, i32 %134, %struct.dentry* %135, i8* %144)
  br label %146

146:                                              ; preds = %18, %122, %97, %73, %49, %25
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %10

150:                                              ; preds = %10
  ret void
}

declare dso_local i32 @debugfs_create_u32(i64, i32, %struct.dentry*, i8*) #1

declare dso_local i32 @debugfs_create_x32(i64, i32, %struct.dentry*, i8*) #1

declare dso_local i32 @debugfs_create_file_unsafe(i64, i32, %struct.dentry*, i8*, i32*) #1

declare dso_local i32 @wil_debugfs_create_iomem_x32(i64, i32, %struct.dentry*, i8*, %struct.wil6210_priv*) #1

declare dso_local i32 @debugfs_create_u8(i64, i32, %struct.dentry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
