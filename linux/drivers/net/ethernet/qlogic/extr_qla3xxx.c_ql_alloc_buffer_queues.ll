; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_alloc_buffer_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_alloc_buffer_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*, i32, i32, i32, i32*, i32*, i32 }

@PAGE_SIZE = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"lBufQ failed\0A\00", align 1
@NUM_SBUFQ_ENTRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Small Buffer Queue allocation failed\0A\00", align 1
@QL_ALLOC_BUFQS_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*)* @ql_alloc_buffer_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_alloc_buffer_queues(%struct.ql3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql3_adapter*, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %3, align 8
  %4 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %5 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = trunc i64 %8 to i32
  %10 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = load i8*, i8** @PAGE_SIZE, align 8
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i8*, i8** @PAGE_SIZE, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  br label %31

24:                                               ; preds = %1
  %25 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %27, 2
  %29 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %32, i32 0, i32 17
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32* @kmalloc_array(i32 %34, i32 4, i32 %35)
  %37 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %37, i32 0, i32 16
  store i32* %36, i32** %38, align 8
  %39 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %39, i32 0, i32 16
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %158

46:                                               ; preds = %31
  %47 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %47, i32 0, i32 12
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %53, i32 0, i32 10
  %55 = call i8* @pci_alloc_consistent(i32 %49, i32 %52, i32* %54)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %57, i32 0, i32 11
  store i32* %56, i32** %58, align 8
  %59 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %59, i32 0, i32 11
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %46
  %64 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %64, i32 0, i32 13
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @netdev_err(i32 %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %158

70:                                               ; preds = %46
  %71 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %71, i32 0, i32 11
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %74, i32 0, i32 15
  store i32* %73, i32** %75, align 8
  %76 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %79, i32 0, i32 14
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @NUM_SBUFQ_ENTRIES, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = load i8*, i8** @PAGE_SIZE, align 8
  %93 = icmp ult i8* %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %70
  %95 = load i8*, i8** @PAGE_SIZE, align 8
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  br label %106

99:                                               ; preds = %70
  %100 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %102, 2
  %104 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %99, %94
  %107 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %107, i32 0, i32 12
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %114 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %113, i32 0, i32 6
  %115 = call i8* @pci_alloc_consistent(i32 %109, i32 %112, i32* %114)
  %116 = bitcast i8* %115 to i32*
  %117 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %117, i32 0, i32 8
  store i32* %116, i32** %118, align 8
  %119 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %119, i32 0, i32 8
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %143

123:                                              ; preds = %106
  %124 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %124, i32 0, i32 13
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @netdev_err(i32 %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %128 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %128, i32 0, i32 12
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %132 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %134, i32 0, i32 11
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %138 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %137, i32 0, i32 10
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @pci_free_consistent(i32 %130, i32 %133, i32* %136, i32 %139)
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %158

143:                                              ; preds = %106
  %144 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %145 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %144, i32 0, i32 8
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %148 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %147, i32 0, i32 9
  store i32* %146, i32** %148, align 8
  %149 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %150 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %153 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %152, i32 0, i32 7
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @QL_ALLOC_BUFQS_DONE, align 4
  %155 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %156 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %155, i32 0, i32 5
  %157 = call i32 @set_bit(i32 %154, i32* %156)
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %143, %123, %63, %43
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
