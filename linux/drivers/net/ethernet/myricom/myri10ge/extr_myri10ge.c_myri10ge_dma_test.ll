; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_dma_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_dma_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.myri10ge_cmd = type { i32, i32, i8* }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"read/write\00", align 1
@MXGEFW_CMD_UNALIGNED_TEST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"DMA %s benchmark failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.myri10ge_priv*, i32)* @myri10ge_dma_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_dma_test(%struct.myri10ge_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.myri10ge_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.myri10ge_cmd, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.page* @alloc_page(i32 %12)
  store %struct.page* %13, %struct.page** %9, align 8
  %14 = load %struct.page*, %struct.page** %9, align 8
  %15 = icmp ne %struct.page* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %157

19:                                               ; preds = %2
  %20 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %21 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %20, i32 0, i32 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.page*, %struct.page** %9, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %26 = call i32 @pci_map_page(%struct.TYPE_4__* %22, %struct.page* %23, i32 0, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %28 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %27, i32 0, i32 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @pci_dma_mapping_error(%struct.TYPE_4__* %29, i32 %30)
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load %struct.page*, %struct.page** %9, align 8
  %36 = call i32 @__free_page(%struct.page* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %157

39:                                               ; preds = %19
  %40 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %41 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i8* @MYRI10GE_LOWPART_TO_U32(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i8* @MYRI10GE_HIGHPART_TO_U32(i32 %47)
  %49 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = mul nsw i32 %50, 65536
  %52 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @myri10ge_send_cmd(%struct.myri10ge_priv* %53, i32 %54, %struct.myri10ge_cmd* %6, i32 0)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %39
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %131

59:                                               ; preds = %39
  %60 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = ashr i32 %61, 16
  %63 = load i32, i32* %8, align 4
  %64 = mul nsw i32 %62, %63
  %65 = mul nsw i32 %64, 2
  %66 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 65535
  %69 = sdiv i32 %65, %68
  %70 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %71 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i8* @MYRI10GE_LOWPART_TO_U32(i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  store i32 %74, i32* %75, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i8* @MYRI10GE_HIGHPART_TO_U32(i32 %76)
  %78 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 2
  store i8* %77, i8** %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %79, 1
  %81 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @myri10ge_send_cmd(%struct.myri10ge_priv* %82, i32 %83, %struct.myri10ge_cmd* %6, i32 0)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %59
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %131

88:                                               ; preds = %59
  %89 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = ashr i32 %90, 16
  %92 = load i32, i32* %8, align 4
  %93 = mul nsw i32 %91, %92
  %94 = mul nsw i32 %93, 2
  %95 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, 65535
  %98 = sdiv i32 %94, %97
  %99 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %100 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i8* @MYRI10GE_LOWPART_TO_U32(i32 %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  store i32 %103, i32* %104, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i8* @MYRI10GE_HIGHPART_TO_U32(i32 %105)
  %107 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 2
  store i8* %106, i8** %107, align 8
  %108 = load i32, i32* %8, align 4
  %109 = mul nsw i32 %108, 65537
  %110 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 1
  store i32 %109, i32* %110, align 4
  %111 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @myri10ge_send_cmd(%struct.myri10ge_priv* %111, i32 %112, %struct.myri10ge_cmd* %6, i32 0)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %88
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %131

117:                                              ; preds = %88
  %118 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = ashr i32 %119, 16
  %121 = load i32, i32* %8, align 4
  %122 = mul nsw i32 %120, %121
  %123 = mul nsw i32 %122, 2
  %124 = mul nsw i32 %123, 2
  %125 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, 65535
  %128 = sdiv i32 %124, %127
  %129 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %130 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %117, %116, %87, %58
  %132 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %133 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %132, i32 0, i32 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @PAGE_SIZE, align 4
  %137 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %138 = call i32 @pci_unmap_page(%struct.TYPE_4__* %134, i32 %135, i32 %136, i32 %137)
  %139 = load %struct.page*, %struct.page** %9, align 8
  %140 = call i32 @put_page(%struct.page* %139)
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %131
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @MXGEFW_CMD_UNALIGNED_TEST, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %149 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %148, i32 0, i32 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i8*, i8** %11, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @dev_warn(i32* %151, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %152, i32 %153)
  br label %155

155:                                              ; preds = %147, %143, %131
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %155, %34, %16
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @pci_map_page(%struct.TYPE_4__*, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_dma_mapping_error(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i8* @MYRI10GE_LOWPART_TO_U32(i32) #1

declare dso_local i8* @MYRI10GE_HIGHPART_TO_U32(i32) #1

declare dso_local i32 @myri10ge_send_cmd(%struct.myri10ge_priv*, i32, %struct.myri10ge_cmd*, i32) #1

declare dso_local i32 @pci_unmap_page(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
