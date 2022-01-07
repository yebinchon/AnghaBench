; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_try_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_try_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.TYPE_2__*, i32, %struct.pci_dev*, %struct.niu_parent* }
%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32 }
%struct.niu_parent = type { i32, i32*, i32* }
%struct.msix_entry = type { i32, i64 }

@NIU_NUM_LDG = common dso_local global i32 0, align 4
@NIU_FLAGS_MSIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, i32*)* @niu_try_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_try_msix(%struct.niu* %0, i32* %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.niu_parent*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32, i32* @NIU_NUM_LDG, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca %struct.msix_entry, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load %struct.niu*, %struct.niu** %3, align 8
  %18 = getelementptr inbounds %struct.niu, %struct.niu* %17, i32 0, i32 5
  %19 = load %struct.niu_parent*, %struct.niu_parent** %18, align 8
  store %struct.niu_parent* %19, %struct.niu_parent** %7, align 8
  %20 = load %struct.niu*, %struct.niu** %3, align 8
  %21 = getelementptr inbounds %struct.niu, %struct.niu* %20, i32 0, i32 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  store %struct.pci_dev* %22, %struct.pci_dev** %8, align 8
  %23 = load i32, i32* @NIU_NUM_LDG, align 4
  %24 = load %struct.niu_parent*, %struct.niu_parent** %7, align 8
  %25 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sdiv i32 %23, %26
  %28 = load %struct.niu*, %struct.niu** %3, align 8
  %29 = getelementptr inbounds %struct.niu, %struct.niu* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %27, %30
  store i32 %31, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %48, %2
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @NIU_NUM_LDG, align 4
  %35 = load %struct.niu_parent*, %struct.niu_parent** %7, align 8
  %36 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 %34, %37
  %39 = icmp slt i32 %33, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %32

51:                                               ; preds = %32
  %52 = load %struct.niu_parent*, %struct.niu_parent** %7, align 8
  %53 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.niu*, %struct.niu** %3, align 8
  %56 = getelementptr inbounds %struct.niu, %struct.niu* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.niu_parent*, %struct.niu_parent** %7, align 8
  %62 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.niu*, %struct.niu** %3, align 8
  %65 = getelementptr inbounds %struct.niu, %struct.niu* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %60, %69
  %71 = load %struct.niu*, %struct.niu** %3, align 8
  %72 = getelementptr inbounds %struct.niu, %struct.niu* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 3, i32 1
  %77 = add nsw i32 %70, %76
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @NIU_NUM_LDG, align 4
  %80 = load %struct.niu_parent*, %struct.niu_parent** %7, align 8
  %81 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sdiv i32 %79, %82
  %84 = icmp sgt i32 %78, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @BUG_ON(i32 %85)
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %101, %51
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %16, i64 %93
  %95 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %16, i64 %98
  %100 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 16
  br label %101

101:                                              ; preds = %91
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %87

104:                                              ; preds = %87
  %105 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @pci_enable_msix_range(%struct.pci_dev* %105, %struct.msix_entry* %16, i32 1, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load i32, i32* @NIU_FLAGS_MSIX, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.niu*, %struct.niu** %3, align 8
  %114 = getelementptr inbounds %struct.niu, %struct.niu* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  store i32 1, i32* %12, align 4
  br label %147

117:                                              ; preds = %104
  %118 = load i32, i32* @NIU_FLAGS_MSIX, align 4
  %119 = load %struct.niu*, %struct.niu** %3, align 8
  %120 = getelementptr inbounds %struct.niu, %struct.niu* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %140, %117
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %123
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %16, i64 %129
  %131 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.niu*, %struct.niu** %3, align 8
  %134 = getelementptr inbounds %struct.niu, %struct.niu* %133, i32 0, i32 2
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  store i64 %132, i64* %139, align 8
  br label %140

140:                                              ; preds = %127
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %123

143:                                              ; preds = %123
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.niu*, %struct.niu** %3, align 8
  %146 = getelementptr inbounds %struct.niu, %struct.niu* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  store i32 0, i32* %12, align 4
  br label %147

147:                                              ; preds = %143, %110
  %148 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %12, align 4
  switch i32 %149, label %151 [
    i32 0, label %150
    i32 1, label %150
  ]

150:                                              ; preds = %147, %147
  ret void

151:                                              ; preds = %147
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @pci_enable_msix_range(%struct.pci_dev*, %struct.msix_entry*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
