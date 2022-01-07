; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i8*, i32, i8*, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i8*, i32, i8*, i32, i8*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i8*, i32 }

@SRC_T2_SZ = common dso_local global i32 0, align 4
@CDU_ILT_PAGE_SZ = common dso_local global i32 0, align 4
@ILT_MAX_LINES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ILT_MEMOP_ALLOC = common dso_local global i32 0, align 4
@BCM_PAGE_SIZE = common dso_local global i32 0, align 4
@NUM_EQ_PAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_alloc_mem(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = call i32 @CONFIGURE_NIC_MODE(%struct.bnx2x* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %1
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 10
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 11
  %18 = load i32, i32* @SRC_T2_SZ, align 4
  %19 = call i8* @BNX2X_PCI_ALLOC(i32* %17, i32 %18)
  %20 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %21 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %20, i32 0, i32 10
  store i8* %19, i8** %21, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %22, i32 0, i32 10
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %173

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %10, %1
  %29 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %30 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %29, i32 0, i32 9
  %31 = call i8* @BNX2X_PCI_ALLOC(i32* %30, i32 4)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %33 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %32, i32 0, i32 8
  store i8* %31, i8** %33, align 8
  %34 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %35 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %34, i32 0, i32 8
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  br label %173

39:                                               ; preds = %28
  %40 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %41 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %40, i32 0, i32 7
  %42 = call i8* @BNX2X_PCI_ALLOC(i32* %41, i32 4)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %44 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  %45 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %46 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %45, i32 0, i32 6
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  br label %173

50:                                               ; preds = %39
  %51 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %52 = call i32 @BNX2X_L2_CID_COUNT(%struct.bnx2x* %51)
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %117, %50
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %120

60:                                               ; preds = %56
  %61 = load i32, i32* @CDU_ILT_PAGE_SZ, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %62, %63
  %65 = call i32 @min(i32 %61, i32 %64)
  %66 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %67 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %66, i32 0, i32 5
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %65, i32* %72, align 8
  %73 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %74 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %73, i32 0, i32 5
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %81 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %80, i32 0, i32 5
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @BNX2X_PCI_ALLOC(i32* %79, i32 %87)
  %89 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %90 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %89, i32 0, i32 5
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i8* %88, i8** %95, align 8
  %96 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %97 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %96, i32 0, i32 5
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %60
  br label %173

106:                                              ; preds = %60
  %107 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %108 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %107, i32 0, i32 5
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %106
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %56

120:                                              ; preds = %56
  %121 = load i32, i32* @ILT_MAX_LINES, align 4
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i32 @kcalloc(i32 %121, i32 4, i32 %122)
  %124 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %125 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %124, i32 0, i32 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i32 %123, i32* %127, align 4
  %128 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %129 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %128, i32 0, i32 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %120
  br label %173

135:                                              ; preds = %120
  %136 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %137 = load i32, i32* @ILT_MEMOP_ALLOC, align 4
  %138 = call i64 @bnx2x_ilt_mem_op(%struct.bnx2x* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %173

141:                                              ; preds = %135
  %142 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %143 = call i64 @bnx2x_iov_alloc_mem(%struct.bnx2x* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %173

146:                                              ; preds = %141
  %147 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %148 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %147, i32 0, i32 3
  %149 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %150 = call i8* @BNX2X_PCI_ALLOC(i32* %148, i32 %149)
  %151 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %152 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %154 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %153, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %146
  br label %173

158:                                              ; preds = %146
  %159 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %160 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %159, i32 0, i32 1
  %161 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %162 = load i32, i32* @NUM_EQ_PAGES, align 4
  %163 = mul nsw i32 %161, %162
  %164 = call i8* @BNX2X_PCI_ALLOC(i32* %160, i32 %163)
  %165 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %166 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %165, i32 0, i32 0
  store i8* %164, i8** %166, align 8
  %167 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %168 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %158
  br label %173

172:                                              ; preds = %158
  store i32 0, i32* %2, align 4
  br label %179

173:                                              ; preds = %171, %157, %145, %140, %134, %105, %49, %38, %26
  %174 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %175 = call i32 @bnx2x_free_mem(%struct.bnx2x* %174)
  %176 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %173, %172
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i32 @CONFIGURE_NIC_MODE(%struct.bnx2x*) #1

declare dso_local i8* @BNX2X_PCI_ALLOC(i32*, i32) #1

declare dso_local i32 @BNX2X_L2_CID_COUNT(%struct.bnx2x*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i64 @bnx2x_ilt_mem_op(%struct.bnx2x*, i32) #1

declare dso_local i64 @bnx2x_iov_alloc_mem(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_free_mem(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
