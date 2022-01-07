; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_c2_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_c2_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_cls_c2_entry = type { i32, i32, i8**, i8*, i8** }

@MVPP22_CLS_C2_TCAM_IDX = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_TCAM_DATA0 = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_TCAM_DATA1 = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_TCAM_DATA2 = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_TCAM_DATA3 = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_TCAM_DATA4 = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ACT = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR0 = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR1 = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR2 = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR3 = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_TCAM_INV = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_TCAM_INV_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvpp2_cls_c2_read(%struct.mvpp2* %0, i32 %1, %struct.mvpp2_cls_c2_entry* %2) #0 {
  %4 = alloca %struct.mvpp2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvpp2_cls_c2_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mvpp2_cls_c2_entry* %2, %struct.mvpp2_cls_c2_entry** %6, align 8
  %8 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %9 = load i32, i32* @MVPP22_CLS_C2_TCAM_IDX, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @mvpp2_write(%struct.mvpp2* %8, i32 %9, i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %6, align 8
  %14 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %16 = load i32, i32* @MVPP22_CLS_C2_TCAM_DATA0, align 4
  %17 = call i8* @mvpp2_read(%struct.mvpp2* %15, i32 %16)
  %18 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %6, align 8
  %19 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %18, i32 0, i32 4
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  store i8* %17, i8** %21, align 8
  %22 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %23 = load i32, i32* @MVPP22_CLS_C2_TCAM_DATA1, align 4
  %24 = call i8* @mvpp2_read(%struct.mvpp2* %22, i32 %23)
  %25 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %6, align 8
  %26 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %25, i32 0, i32 4
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* %24, i8** %28, align 8
  %29 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %30 = load i32, i32* @MVPP22_CLS_C2_TCAM_DATA2, align 4
  %31 = call i8* @mvpp2_read(%struct.mvpp2* %29, i32 %30)
  %32 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %6, align 8
  %33 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %32, i32 0, i32 4
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  store i8* %31, i8** %35, align 8
  %36 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %37 = load i32, i32* @MVPP22_CLS_C2_TCAM_DATA3, align 4
  %38 = call i8* @mvpp2_read(%struct.mvpp2* %36, i32 %37)
  %39 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %6, align 8
  %40 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %39, i32 0, i32 4
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 3
  store i8* %38, i8** %42, align 8
  %43 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %44 = load i32, i32* @MVPP22_CLS_C2_TCAM_DATA4, align 4
  %45 = call i8* @mvpp2_read(%struct.mvpp2* %43, i32 %44)
  %46 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %6, align 8
  %47 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %46, i32 0, i32 4
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 4
  store i8* %45, i8** %49, align 8
  %50 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %51 = load i32, i32* @MVPP22_CLS_C2_ACT, align 4
  %52 = call i8* @mvpp2_read(%struct.mvpp2* %50, i32 %51)
  %53 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %6, align 8
  %54 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %56 = load i32, i32* @MVPP22_CLS_C2_ATTR0, align 4
  %57 = call i8* @mvpp2_read(%struct.mvpp2* %55, i32 %56)
  %58 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %6, align 8
  %59 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %58, i32 0, i32 2
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  store i8* %57, i8** %61, align 8
  %62 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %63 = load i32, i32* @MVPP22_CLS_C2_ATTR1, align 4
  %64 = call i8* @mvpp2_read(%struct.mvpp2* %62, i32 %63)
  %65 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %6, align 8
  %66 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %65, i32 0, i32 2
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  store i8* %64, i8** %68, align 8
  %69 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %70 = load i32, i32* @MVPP22_CLS_C2_ATTR2, align 4
  %71 = call i8* @mvpp2_read(%struct.mvpp2* %69, i32 %70)
  %72 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %6, align 8
  %73 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %72, i32 0, i32 2
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  store i8* %71, i8** %75, align 8
  %76 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %77 = load i32, i32* @MVPP22_CLS_C2_ATTR3, align 4
  %78 = call i8* @mvpp2_read(%struct.mvpp2* %76, i32 %77)
  %79 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %6, align 8
  %80 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %79, i32 0, i32 2
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 3
  store i8* %78, i8** %82, align 8
  %83 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %84 = load i32, i32* @MVPP22_CLS_C2_TCAM_INV, align 4
  %85 = call i8* @mvpp2_read(%struct.mvpp2* %83, i32 %84)
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @MVPP22_CLS_C2_TCAM_INV_BIT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load %struct.mvpp2_cls_c2_entry*, %struct.mvpp2_cls_c2_entry** %6, align 8
  %94 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  ret void
}

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

declare dso_local i8* @mvpp2_read(%struct.mvpp2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
