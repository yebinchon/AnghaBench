; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c___media_entity_setup_link_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c___media_entity_setup_link_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_link = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@link_setup = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_link*, i32)* @__media_entity_setup_link_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__media_entity_setup_link_notify(%struct.media_link* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.media_link*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.media_link* %0, %struct.media_link** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.media_link*, %struct.media_link** %4, align 8
  %8 = getelementptr inbounds %struct.media_link, %struct.media_link* %7, i32 0, i32 3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @link_setup, align 4
  %13 = load %struct.media_link*, %struct.media_link** %4, align 8
  %14 = getelementptr inbounds %struct.media_link, %struct.media_link* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load %struct.media_link*, %struct.media_link** %4, align 8
  %17 = getelementptr inbounds %struct.media_link, %struct.media_link* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @media_entity_call(i32 %11, i32 %12, %struct.TYPE_5__* %15, %struct.TYPE_5__* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ENOIOCTLCMD, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %81

30:                                               ; preds = %23, %2
  %31 = load %struct.media_link*, %struct.media_link** %4, align 8
  %32 = getelementptr inbounds %struct.media_link, %struct.media_link* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @link_setup, align 4
  %37 = load %struct.media_link*, %struct.media_link** %4, align 8
  %38 = getelementptr inbounds %struct.media_link, %struct.media_link* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load %struct.media_link*, %struct.media_link** %4, align 8
  %41 = getelementptr inbounds %struct.media_link, %struct.media_link* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @media_entity_call(i32 %35, i32 %36, %struct.TYPE_5__* %39, %struct.TYPE_5__* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %30
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ENOIOCTLCMD, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load %struct.media_link*, %struct.media_link** %4, align 8
  %54 = getelementptr inbounds %struct.media_link, %struct.media_link* %53, i32 0, i32 3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @link_setup, align 4
  %59 = load %struct.media_link*, %struct.media_link** %4, align 8
  %60 = getelementptr inbounds %struct.media_link, %struct.media_link* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load %struct.media_link*, %struct.media_link** %4, align 8
  %63 = getelementptr inbounds %struct.media_link, %struct.media_link* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load %struct.media_link*, %struct.media_link** %4, align 8
  %66 = getelementptr inbounds %struct.media_link, %struct.media_link* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @media_entity_call(i32 %57, i32 %58, %struct.TYPE_5__* %61, %struct.TYPE_5__* %64, i32 %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %81

70:                                               ; preds = %47, %30
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.media_link*, %struct.media_link** %4, align 8
  %73 = getelementptr inbounds %struct.media_link, %struct.media_link* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.media_link*, %struct.media_link** %4, align 8
  %75 = getelementptr inbounds %struct.media_link, %struct.media_link* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.media_link*, %struct.media_link** %4, align 8
  %78 = getelementptr inbounds %struct.media_link, %struct.media_link* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %70, %52, %28
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @media_entity_call(i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
