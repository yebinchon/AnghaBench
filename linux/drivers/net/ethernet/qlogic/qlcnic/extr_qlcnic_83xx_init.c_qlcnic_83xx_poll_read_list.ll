; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_poll_read_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_poll_read_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%struct.qlc_83xx_entry_hdr = type { i32, i64 }
%struct.qlc_83xx_quad_entry = type { i64, i32, i32 }
%struct.qlc_83xx_poll = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@QLC_83XX_MAX_RESET_SEQ_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, %struct.qlc_83xx_entry_hdr*)* @qlcnic_83xx_poll_read_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_83xx_poll_read_list(%struct.qlcnic_adapter* %0, %struct.qlc_83xx_entry_hdr* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlc_83xx_entry_hdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlc_83xx_quad_entry*, align 8
  %11 = alloca %struct.qlc_83xx_poll*, align 8
  %12 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.qlc_83xx_entry_hdr* %1, %struct.qlc_83xx_entry_hdr** %4, align 8
  %13 = load %struct.qlc_83xx_entry_hdr*, %struct.qlc_83xx_entry_hdr** %4, align 8
  %14 = bitcast %struct.qlc_83xx_entry_hdr* %13 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 16
  %16 = bitcast i8* %15 to %struct.qlc_83xx_poll*
  store %struct.qlc_83xx_poll* %16, %struct.qlc_83xx_poll** %11, align 8
  %17 = load %struct.qlc_83xx_poll*, %struct.qlc_83xx_poll** %11, align 8
  %18 = bitcast %struct.qlc_83xx_poll* %17 to i8*
  %19 = getelementptr inbounds i8, i8* %18, i64 8
  %20 = bitcast i8* %19 to %struct.qlc_83xx_quad_entry*
  store %struct.qlc_83xx_quad_entry* %20, %struct.qlc_83xx_quad_entry** %10, align 8
  %21 = load %struct.qlc_83xx_entry_hdr*, %struct.qlc_83xx_entry_hdr** %4, align 8
  %22 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, %struct.qlc_83xx_entry_hdr* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %97, %2
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.qlc_83xx_entry_hdr*, %struct.qlc_83xx_entry_hdr** %4, align 8
  %27 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, %struct.qlc_83xx_entry_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %102

30:                                               ; preds = %24
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %32 = load %struct.qlc_83xx_quad_entry*, %struct.qlc_83xx_quad_entry** %10, align 8
  %33 = getelementptr inbounds %struct.qlc_83xx_quad_entry, %struct.qlc_83xx_quad_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.qlc_83xx_quad_entry*, %struct.qlc_83xx_quad_entry** %10, align 8
  %36 = getelementptr inbounds %struct.qlc_83xx_quad_entry, %struct.qlc_83xx_quad_entry* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %31, i32 %34, i32 %37)
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %96

41:                                               ; preds = %30
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %43 = load %struct.qlc_83xx_quad_entry*, %struct.qlc_83xx_quad_entry** %10, align 8
  %44 = getelementptr inbounds %struct.qlc_83xx_quad_entry, %struct.qlc_83xx_quad_entry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.qlc_83xx_poll*, %struct.qlc_83xx_poll** %11, align 8
  %48 = getelementptr inbounds %struct.qlc_83xx_poll, %struct.qlc_83xx_poll* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qlc_83xx_poll*, %struct.qlc_83xx_poll** %11, align 8
  %51 = getelementptr inbounds %struct.qlc_83xx_poll, %struct.qlc_83xx_poll* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @qlcnic_83xx_poll_reg(%struct.qlcnic_adapter* %42, i32 %45, i64 %46, i32 %49, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %95, label %55

55:                                               ; preds = %41
  %56 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %6, align 4
  %62 = load %struct.qlc_83xx_quad_entry*, %struct.qlc_83xx_quad_entry** %10, align 8
  %63 = getelementptr inbounds %struct.qlc_83xx_quad_entry, %struct.qlc_83xx_quad_entry* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %12, align 8
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @QLCRD32(%struct.qlcnic_adapter* %65, i64 %66, i32* %9)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %55
  br label %102

73:                                               ; preds = %55
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %74, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @QLC_83XX_MAX_RESET_SEQ_ENTRIES, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %73
  %89 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %88, %73
  br label %95

95:                                               ; preds = %94, %41
  br label %96

96:                                               ; preds = %95, %30
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  %100 = load %struct.qlc_83xx_quad_entry*, %struct.qlc_83xx_quad_entry** %10, align 8
  %101 = getelementptr inbounds %struct.qlc_83xx_quad_entry, %struct.qlc_83xx_quad_entry* %100, i32 1
  store %struct.qlc_83xx_quad_entry* %101, %struct.qlc_83xx_quad_entry** %10, align 8
  br label %24

102:                                              ; preds = %72, %24
  ret void
}

declare dso_local i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_poll_reg(%struct.qlcnic_adapter*, i32, i64, i32, i32) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
