; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583-irq.c_rc5t583_irq_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583-irq.c_rc5t583_irq_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.rc5t583 = type { i32, i32, i32, i32*, i32* }

@gpedge_add = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"Error in writing reg 0x%02x error: %d\0A\00", align 1
@irq_en_add = common dso_local global i32* null, align 8
@RC5T583_INTC_INTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @rc5t583_irq_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rc5t583_irq_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.rc5t583*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.rc5t583* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.rc5t583* %7, %struct.rc5t583** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %46, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %11 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %8
  %16 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %17 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @gpedge_add, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %25 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rc5t583_write(i32 %18, i32 %23, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %15
  %35 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %36 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @gpedge_add, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @dev_warn(i32 %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %34, %15
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %8

49:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %88, %49
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %53 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @ARRAY_SIZE(i32* %54)
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %91

57:                                               ; preds = %50
  %58 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %59 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** @irq_en_add, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %67 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @rc5t583_write(i32 %60, i32 %65, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %57
  %77 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %78 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** @irq_en_add, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @dev_warn(i32 %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %76, %57
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %50

91:                                               ; preds = %50
  %92 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %93 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @RC5T583_INTC_INTEN, align 4
  %96 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %97 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @rc5t583_write(i32 %94, i32 %95, i32 %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %91
  %103 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %104 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @RC5T583_INTC_INTEN, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @dev_warn(i32 %105, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %102, %91
  %110 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %111 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  ret void
}

declare dso_local %struct.rc5t583* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rc5t583_write(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
