; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_link_change_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_link_change_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmac = type { i32, %struct.TYPE_4__, i32, %struct.cgx_link_user_info, %struct.cgx* }
%struct.TYPE_4__ = type { i32, i64 (%struct.cgx_link_event*, i32)* }
%struct.cgx_link_event = type opaque
%struct.cgx_link_user_info = type { i32, i64 }
%struct.cgx = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.cgx_link_event.0 = type { %struct.cgx_link_user_info, i32, i32 }

@RESP_LINKSTAT_ERRTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cgx port %d:%d Link change handler null\00", align 1
@CGX_ERR_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"cgx port %d:%d Link error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"cgx port %d:%d Link is %s %d Mbps\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"event notification failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.lmac*)* @cgx_link_change_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgx_link_change_handler(i32 %0, %struct.lmac* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lmac*, align 8
  %5 = alloca %struct.cgx_link_user_info*, align 8
  %6 = alloca %struct.cgx*, align 8
  %7 = alloca %struct.cgx_link_event.0, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.lmac* %1, %struct.lmac** %4, align 8
  %10 = load %struct.lmac*, %struct.lmac** %4, align 8
  %11 = getelementptr inbounds %struct.lmac, %struct.lmac* %10, i32 0, i32 4
  %12 = load %struct.cgx*, %struct.cgx** %11, align 8
  store %struct.cgx* %12, %struct.cgx** %6, align 8
  %13 = load %struct.cgx*, %struct.cgx** %6, align 8
  %14 = getelementptr inbounds %struct.cgx, %struct.cgx* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load i32, i32* %3, align 4
  %18 = getelementptr inbounds %struct.cgx_link_event.0, %struct.cgx_link_event.0* %7, i32 0, i32 0
  %19 = load %struct.cgx*, %struct.cgx** %6, align 8
  %20 = load %struct.lmac*, %struct.lmac** %4, align 8
  %21 = getelementptr inbounds %struct.lmac, %struct.lmac* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @link_status_user_format(i32 %17, %struct.cgx_link_user_info* %18, %struct.cgx* %19, i32 %22)
  %24 = load i32, i32* @RESP_LINKSTAT_ERRTYPE, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @FIELD_GET(i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.cgx*, %struct.cgx** %6, align 8
  %28 = getelementptr inbounds %struct.cgx, %struct.cgx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.cgx_link_event.0, %struct.cgx_link_event.0* %7, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load %struct.lmac*, %struct.lmac** %4, align 8
  %32 = getelementptr inbounds %struct.lmac, %struct.lmac* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.cgx_link_event.0, %struct.cgx_link_event.0* %7, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load %struct.lmac*, %struct.lmac** %4, align 8
  %36 = getelementptr inbounds %struct.lmac, %struct.lmac* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.cgx_link_event.0, %struct.cgx_link_event.0* %7, i32 0, i32 0
  %38 = bitcast %struct.cgx_link_user_info* %36 to i8*
  %39 = bitcast %struct.cgx_link_user_info* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = load %struct.lmac*, %struct.lmac** %4, align 8
  %41 = getelementptr inbounds %struct.lmac, %struct.lmac* %40, i32 0, i32 3
  store %struct.cgx_link_user_info* %41, %struct.cgx_link_user_info** %5, align 8
  %42 = load %struct.lmac*, %struct.lmac** %4, align 8
  %43 = getelementptr inbounds %struct.lmac, %struct.lmac* %42, i32 0, i32 0
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load %struct.lmac*, %struct.lmac** %4, align 8
  %46 = getelementptr inbounds %struct.lmac, %struct.lmac* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64 (%struct.cgx_link_event*, i32)*, i64 (%struct.cgx_link_event*, i32)** %47, align 8
  %49 = icmp ne i64 (%struct.cgx_link_event*, i32)* %48, null
  br i1 %49, label %90, label %50

50:                                               ; preds = %2
  %51 = load %struct.device*, %struct.device** %8, align 8
  %52 = load %struct.cgx*, %struct.cgx** %6, align 8
  %53 = getelementptr inbounds %struct.cgx, %struct.cgx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.lmac*, %struct.lmac** %4, align 8
  %56 = getelementptr inbounds %struct.lmac, %struct.lmac* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_dbg(%struct.device* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @CGX_ERR_NONE, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %50
  %63 = load %struct.device*, %struct.device** %8, align 8
  %64 = load %struct.cgx*, %struct.cgx** %6, align 8
  %65 = getelementptr inbounds %struct.cgx, %struct.cgx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.lmac*, %struct.lmac** %4, align 8
  %68 = getelementptr inbounds %struct.lmac, %struct.lmac* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %62, %50
  %73 = load %struct.device*, %struct.device** %8, align 8
  %74 = load %struct.cgx*, %struct.cgx** %6, align 8
  %75 = getelementptr inbounds %struct.cgx, %struct.cgx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.lmac*, %struct.lmac** %4, align 8
  %78 = getelementptr inbounds %struct.lmac, %struct.lmac* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.cgx_link_user_info*, %struct.cgx_link_user_info** %5, align 8
  %81 = getelementptr inbounds %struct.cgx_link_user_info, %struct.cgx_link_user_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %86 = load %struct.cgx_link_user_info*, %struct.cgx_link_user_info** %5, align 8
  %87 = getelementptr inbounds %struct.cgx_link_user_info, %struct.cgx_link_user_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_info(%struct.device* %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %79, i8* %85, i32 %88)
  br label %106

90:                                               ; preds = %2
  %91 = load %struct.lmac*, %struct.lmac** %4, align 8
  %92 = getelementptr inbounds %struct.lmac, %struct.lmac* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i64 (%struct.cgx_link_event*, i32)*, i64 (%struct.cgx_link_event*, i32)** %93, align 8
  %95 = bitcast %struct.cgx_link_event.0* %7 to %struct.cgx_link_event*
  %96 = load %struct.lmac*, %struct.lmac** %4, align 8
  %97 = getelementptr inbounds %struct.lmac, %struct.lmac* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i64 %94(%struct.cgx_link_event* %95, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %90
  %103 = load %struct.device*, %struct.device** %8, align 8
  %104 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %90
  br label %106

106:                                              ; preds = %105, %72
  %107 = load %struct.lmac*, %struct.lmac** %4, align 8
  %108 = getelementptr inbounds %struct.lmac, %struct.lmac* %107, i32 0, i32 0
  %109 = call i32 @spin_unlock(i32* %108)
  ret void
}

declare dso_local i32 @link_status_user_format(i32, %struct.cgx_link_user_info*, %struct.cgx*, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
