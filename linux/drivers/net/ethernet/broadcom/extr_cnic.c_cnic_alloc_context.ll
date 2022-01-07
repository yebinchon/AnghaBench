; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_alloc_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_alloc_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.TYPE_3__*, %struct.cnic_local* }
%struct.TYPE_3__ = type { i32 }
%struct.cnic_local = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32*, i32 }

@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@CNIC_PAGE_SIZE = common dso_local global i32 0, align 4
@BNX2_MAX_CID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BNX2_PG_CTX_MAP = common dso_local global i32 0, align 4
@BNX2_ISCSI_CTX_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*)* @cnic_alloc_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_alloc_context(%struct.cnic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 1
  %15 = load %struct.cnic_local*, %struct.cnic_local** %14, align 8
  store %struct.cnic_local* %15, %struct.cnic_local** %4, align 8
  %16 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %17 = call i64 @BNX2_CHIP(%struct.cnic_local* %16)
  %18 = load i64, i64* @BNX2_CHIP_5709, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %157

20:                                               ; preds = %1
  %21 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %22 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %23 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %25 = sdiv i32 %24, 128
  %26 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %27 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @BNX2_MAX_CID, align 4
  %29 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %30 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %28, %31
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.TYPE_4__* @kzalloc(i32 %36, i32 %37)
  %39 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %40 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %39, i32 0, i32 3
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %40, align 8
  %41 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %42 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp eq %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %20
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %158

48:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %90, %48
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %93

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @BNX2_PG_CTX_MAP, align 4
  store i32 %56, i32* %10, align 4
  br label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @BNX2_ISCSI_CTX_MAP, align 4
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @cnic_reg_rd_ind(%struct.cnic_dev* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = ashr i32 %63, 16
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 65535
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %81, %59
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %75 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %74, i32 0, i32 3
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %73, i32* %80, align 8
  br label %81

81:                                               ; preds = %72
  %82 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %83 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %68

89:                                               ; preds = %68
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %49

93:                                               ; preds = %49
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %96 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %98 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @BNX2_MAX_CID, align 4
  %101 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %102 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 %100, %103
  %105 = icmp sge i32 %99, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %93
  %107 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %108 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %107, i32 0, i32 2
  store i32 0, i32* %108, align 8
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %158

111:                                              ; preds = %93
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %153, %111
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %115 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %156

118:                                              ; preds = %112
  %119 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %120 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %119, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %124 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %125 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %124, i32 0, i32 3
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = call i32* @dma_alloc_coherent(i32* %122, i32 %123, i32* %130, i32 %131)
  %133 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %134 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %133, i32 0, i32 3
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  store i32* %132, i32** %139, align 8
  %140 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %141 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %140, i32 0, i32 3
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %118
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %158

152:                                              ; preds = %118
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %5, align 4
  br label %112

156:                                              ; preds = %112
  br label %157

157:                                              ; preds = %156, %1
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %149, %106, %45
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i64 @BNX2_CHIP(%struct.cnic_local*) #1

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @cnic_reg_rd_ind(%struct.cnic_dev*, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
