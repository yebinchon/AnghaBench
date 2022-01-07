; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_c2_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_c2_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_cls_c2_entry = type { i32*, i32*, i32, i64, i32 }

@MVPP22_CLS_C2_TCAM_IDX = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_TCAM_INV = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_TCAM_INV_BIT = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ACT = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR0 = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR1 = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR2 = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR3 = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_TCAM_DATA0 = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_TCAM_DATA1 = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_TCAM_DATA2 = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_TCAM_DATA3 = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_TCAM_DATA4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2*, %struct.mvpp2_cls_c2_entry*)* @mvpp2_cls_c2_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_cls_c2_write(%struct.mvpp2* %0, %struct.mvpp2_cls_c2_entry* %1) #0 {
  %3 = alloca %struct.mvpp2*, align 8
  %4 = alloca %struct.mvpp2_cls_c2_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %3, align 8
  store %struct.mvpp2_cls_c2_entry* %1, %struct.mvpp2_cls_c2_entry** %4, align 8
  %6 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %7 = load i32, i32* @MVPP22_CLS_C2_TCAM_IDX, align 4
  %8 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %4, align 8
  %9 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @mvpp2_write(%struct.mvpp2* %6, i32 %7, i32 %10)
  %12 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %13 = load i32, i32* @MVPP22_CLS_C2_TCAM_INV, align 4
  %14 = call i32 @mvpp2_read(%struct.mvpp2* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %4, align 8
  %16 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @MVPP22_CLS_C2_TCAM_INV_BIT, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @MVPP22_CLS_C2_TCAM_INV_BIT, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %30 = load i32, i32* @MVPP22_CLS_C2_TCAM_INV, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @mvpp2_write(%struct.mvpp2* %29, i32 %30, i32 %31)
  %33 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %34 = load i32, i32* @MVPP22_CLS_C2_ACT, align 4
  %35 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %4, align 8
  %36 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @mvpp2_write(%struct.mvpp2* %33, i32 %34, i32 %37)
  %39 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %40 = load i32, i32* @MVPP22_CLS_C2_ATTR0, align 4
  %41 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %4, align 8
  %42 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mvpp2_write(%struct.mvpp2* %39, i32 %40, i32 %45)
  %47 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %48 = load i32, i32* @MVPP22_CLS_C2_ATTR1, align 4
  %49 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %4, align 8
  %50 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mvpp2_write(%struct.mvpp2* %47, i32 %48, i32 %53)
  %55 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %56 = load i32, i32* @MVPP22_CLS_C2_ATTR2, align 4
  %57 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %4, align 8
  %58 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mvpp2_write(%struct.mvpp2* %55, i32 %56, i32 %61)
  %63 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %64 = load i32, i32* @MVPP22_CLS_C2_ATTR3, align 4
  %65 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %4, align 8
  %66 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @mvpp2_write(%struct.mvpp2* %63, i32 %64, i32 %69)
  %71 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %72 = load i32, i32* @MVPP22_CLS_C2_TCAM_DATA0, align 4
  %73 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %4, align 8
  %74 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mvpp2_write(%struct.mvpp2* %71, i32 %72, i32 %77)
  %79 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %80 = load i32, i32* @MVPP22_CLS_C2_TCAM_DATA1, align 4
  %81 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %4, align 8
  %82 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @mvpp2_write(%struct.mvpp2* %79, i32 %80, i32 %85)
  %87 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %88 = load i32, i32* @MVPP22_CLS_C2_TCAM_DATA2, align 4
  %89 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %4, align 8
  %90 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @mvpp2_write(%struct.mvpp2* %87, i32 %88, i32 %93)
  %95 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %96 = load i32, i32* @MVPP22_CLS_C2_TCAM_DATA3, align 4
  %97 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %4, align 8
  %98 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @mvpp2_write(%struct.mvpp2* %95, i32 %96, i32 %101)
  %103 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %104 = load i32, i32* @MVPP22_CLS_C2_TCAM_DATA4, align 4
  %105 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %4, align 8
  %106 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @mvpp2_write(%struct.mvpp2* %103, i32 %104, i32 %109)
  ret void
}

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_read(%struct.mvpp2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
