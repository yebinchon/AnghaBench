; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c___media_entity_setup_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c___media_entity_setup_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_link = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.media_entity* }
%struct.media_entity = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.media_device* }
%struct.media_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.media_link*, i32, i32)* }
%struct.TYPE_5__ = type { %struct.media_entity* }

@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_IMMUTABLE = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_DYNAMIC = common dso_local global i32 0, align 4
@MEDIA_DEV_NOTIFY_PRE_LINK_CH = common dso_local global i32 0, align 4
@MEDIA_DEV_NOTIFY_POST_LINK_CH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__media_entity_setup_link(%struct.media_link* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.media_link*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.media_device*, align 8
  %8 = alloca %struct.media_entity*, align 8
  %9 = alloca %struct.media_entity*, align 8
  %10 = alloca i32, align 4
  store %struct.media_link* %0, %struct.media_link** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.media_link*, %struct.media_link** %4, align 8
  %15 = icmp eq %struct.media_link* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %148

19:                                               ; preds = %2
  %20 = load %struct.media_link*, %struct.media_link** %4, align 8
  %21 = getelementptr inbounds %struct.media_link, %struct.media_link* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %25, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %148

34:                                               ; preds = %19
  %35 = load %struct.media_link*, %struct.media_link** %4, align 8
  %36 = getelementptr inbounds %struct.media_link, %struct.media_link* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MEDIA_LNK_FL_IMMUTABLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.media_link*, %struct.media_link** %4, align 8
  %43 = getelementptr inbounds %struct.media_link, %struct.media_link* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  br label %51

51:                                               ; preds = %48, %47
  %52 = phi i32 [ 0, %47 ], [ %50, %48 ]
  store i32 %52, i32* %3, align 4
  br label %148

53:                                               ; preds = %34
  %54 = load %struct.media_link*, %struct.media_link** %4, align 8
  %55 = getelementptr inbounds %struct.media_link, %struct.media_link* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %148

60:                                               ; preds = %53
  %61 = load %struct.media_link*, %struct.media_link** %4, align 8
  %62 = getelementptr inbounds %struct.media_link, %struct.media_link* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.media_entity*, %struct.media_entity** %64, align 8
  store %struct.media_entity* %65, %struct.media_entity** %8, align 8
  %66 = load %struct.media_link*, %struct.media_link** %4, align 8
  %67 = getelementptr inbounds %struct.media_link, %struct.media_link* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.media_entity*, %struct.media_entity** %69, align 8
  store %struct.media_entity* %70, %struct.media_entity** %9, align 8
  %71 = load %struct.media_link*, %struct.media_link** %4, align 8
  %72 = getelementptr inbounds %struct.media_link, %struct.media_link* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MEDIA_LNK_FL_DYNAMIC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %60
  %78 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %79 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.media_entity*, %struct.media_entity** %9, align 8
  %84 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82, %77
  %88 = load i32, i32* @EBUSY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %148

90:                                               ; preds = %82, %60
  %91 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %92 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load %struct.media_device*, %struct.media_device** %93, align 8
  store %struct.media_device* %94, %struct.media_device** %7, align 8
  %95 = load %struct.media_device*, %struct.media_device** %7, align 8
  %96 = getelementptr inbounds %struct.media_device, %struct.media_device* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = icmp ne %struct.TYPE_8__* %97, null
  br i1 %98, label %99, label %121

99:                                               ; preds = %90
  %100 = load %struct.media_device*, %struct.media_device** %7, align 8
  %101 = getelementptr inbounds %struct.media_device, %struct.media_device* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32 (%struct.media_link*, i32, i32)*, i32 (%struct.media_link*, i32, i32)** %103, align 8
  %105 = icmp ne i32 (%struct.media_link*, i32, i32)* %104, null
  br i1 %105, label %106, label %121

106:                                              ; preds = %99
  %107 = load %struct.media_device*, %struct.media_device** %7, align 8
  %108 = getelementptr inbounds %struct.media_device, %struct.media_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32 (%struct.media_link*, i32, i32)*, i32 (%struct.media_link*, i32, i32)** %110, align 8
  %112 = load %struct.media_link*, %struct.media_link** %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @MEDIA_DEV_NOTIFY_PRE_LINK_CH, align 4
  %115 = call i32 %111(%struct.media_link* %112, i32 %113, i32 %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %106
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %3, align 4
  br label %148

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120, %99, %90
  %122 = load %struct.media_link*, %struct.media_link** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @__media_entity_setup_link_notify(%struct.media_link* %122, i32 %123)
  store i32 %124, i32* %10, align 4
  %125 = load %struct.media_device*, %struct.media_device** %7, align 8
  %126 = getelementptr inbounds %struct.media_device, %struct.media_device* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = icmp ne %struct.TYPE_8__* %127, null
  br i1 %128, label %129, label %146

129:                                              ; preds = %121
  %130 = load %struct.media_device*, %struct.media_device** %7, align 8
  %131 = getelementptr inbounds %struct.media_device, %struct.media_device* %130, i32 0, i32 0
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32 (%struct.media_link*, i32, i32)*, i32 (%struct.media_link*, i32, i32)** %133, align 8
  %135 = icmp ne i32 (%struct.media_link*, i32, i32)* %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %129
  %137 = load %struct.media_device*, %struct.media_device** %7, align 8
  %138 = getelementptr inbounds %struct.media_device, %struct.media_device* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32 (%struct.media_link*, i32, i32)*, i32 (%struct.media_link*, i32, i32)** %140, align 8
  %142 = load %struct.media_link*, %struct.media_link** %4, align 8
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @MEDIA_DEV_NOTIFY_POST_LINK_CH, align 4
  %145 = call i32 %141(%struct.media_link* %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %136, %129, %121
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %146, %118, %87, %59, %51, %31, %16
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @__media_entity_setup_link_notify(%struct.media_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
