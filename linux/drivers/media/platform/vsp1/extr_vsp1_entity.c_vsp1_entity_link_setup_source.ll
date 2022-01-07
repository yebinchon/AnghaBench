; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_entity.c_vsp1_entity_link_setup_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_entity.c_vsp1_entity_link_setup_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_pad = type { i64, i32 }
%struct.vsp1_entity = type { i64, i64, %struct.vsp1_entity*, i32 }

@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@VSP1_ENTITY_HGO = common dso_local global i64 0, align 8
@VSP1_ENTITY_HGT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_pad*, %struct.media_pad*, i32)* @vsp1_entity_link_setup_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_entity_link_setup_source(%struct.media_pad* %0, %struct.media_pad* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.media_pad*, align 8
  %6 = alloca %struct.media_pad*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vsp1_entity*, align 8
  %9 = alloca %struct.vsp1_entity*, align 8
  store %struct.media_pad* %0, %struct.media_pad** %5, align 8
  store %struct.media_pad* %1, %struct.media_pad** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %11 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.vsp1_entity* @media_entity_to_vsp1_entity(i32 %12)
  store %struct.vsp1_entity* %13, %struct.vsp1_entity** %8, align 8
  %14 = load %struct.vsp1_entity*, %struct.vsp1_entity** %8, align 8
  %15 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %19
  %25 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %26 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.vsp1_entity* @media_entity_to_vsp1_entity(i32 %27)
  store %struct.vsp1_entity* %28, %struct.vsp1_entity** %9, align 8
  %29 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %30 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VSP1_ENTITY_HGO, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %24
  %35 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %36 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VSP1_ENTITY_HGT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load %struct.vsp1_entity*, %struct.vsp1_entity** %8, align 8
  %42 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %41, i32 0, i32 2
  %43 = load %struct.vsp1_entity*, %struct.vsp1_entity** %42, align 8
  %44 = icmp ne %struct.vsp1_entity* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %64

48:                                               ; preds = %40
  %49 = load %struct.vsp1_entity*, %struct.vsp1_entity** %9, align 8
  %50 = load %struct.vsp1_entity*, %struct.vsp1_entity** %8, align 8
  %51 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %50, i32 0, i32 2
  store %struct.vsp1_entity* %49, %struct.vsp1_entity** %51, align 8
  %52 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %53 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.vsp1_entity*, %struct.vsp1_entity** %8, align 8
  %56 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %48, %34, %24
  br label %63

58:                                               ; preds = %19
  %59 = load %struct.vsp1_entity*, %struct.vsp1_entity** %8, align 8
  %60 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %59, i32 0, i32 2
  store %struct.vsp1_entity* null, %struct.vsp1_entity** %60, align 8
  %61 = load %struct.vsp1_entity*, %struct.vsp1_entity** %8, align 8
  %62 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %58, %57
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %45, %18
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.vsp1_entity* @media_entity_to_vsp1_entity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
