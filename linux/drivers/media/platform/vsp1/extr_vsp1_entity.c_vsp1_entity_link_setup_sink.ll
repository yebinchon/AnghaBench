; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_entity.c_vsp1_entity_link_setup_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_entity.c_vsp1_entity_link_setup_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_pad = type { i64, i32 }
%struct.vsp1_entity = type { %struct.vsp1_entity** }

@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_pad*, %struct.media_pad*, i32)* @vsp1_entity_link_setup_sink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_entity_link_setup_sink(%struct.media_pad* %0, %struct.media_pad* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.media_pad*, align 8
  %6 = alloca %struct.media_pad*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vsp1_entity*, align 8
  %9 = alloca %struct.vsp1_entity*, align 8
  store %struct.media_pad* %0, %struct.media_pad** %5, align 8
  store %struct.media_pad* %1, %struct.media_pad** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %11 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.vsp1_entity* @media_entity_to_vsp1_entity(i32 %12)
  store %struct.vsp1_entity* %13, %struct.vsp1_entity** %8, align 8
  %14 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %15 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.vsp1_entity* @media_entity_to_vsp1_entity(i32 %16)
  store %struct.vsp1_entity* %17, %struct.vsp1_entity** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %3
  %23 = load %struct.vsp1_entity*, %struct.vsp1_entity** %8, align 8
  %24 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %23, i32 0, i32 0
  %25 = load %struct.vsp1_entity**, %struct.vsp1_entity*** %24, align 8
  %26 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %27 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.vsp1_entity*, %struct.vsp1_entity** %25, i64 %28
  %30 = load %struct.vsp1_entity*, %struct.vsp1_entity** %29, align 8
  %31 = icmp ne %struct.vsp1_entity* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %53

35:                                               ; preds = %22
  %36 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %37 = load %struct.vsp1_entity*, %struct.vsp1_entity** %8, align 8
  %38 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %37, i32 0, i32 0
  %39 = load %struct.vsp1_entity**, %struct.vsp1_entity*** %38, align 8
  %40 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %41 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.vsp1_entity*, %struct.vsp1_entity** %39, i64 %42
  store %struct.vsp1_entity* %36, %struct.vsp1_entity** %43, align 8
  br label %52

44:                                               ; preds = %3
  %45 = load %struct.vsp1_entity*, %struct.vsp1_entity** %8, align 8
  %46 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %45, i32 0, i32 0
  %47 = load %struct.vsp1_entity**, %struct.vsp1_entity*** %46, align 8
  %48 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %49 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.vsp1_entity*, %struct.vsp1_entity** %47, i64 %50
  store %struct.vsp1_entity* null, %struct.vsp1_entity** %51, align 8
  br label %52

52:                                               ; preds = %44, %35
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.vsp1_entity* @media_entity_to_vsp1_entity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
