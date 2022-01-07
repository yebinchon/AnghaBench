; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptfc.c_mptfc_generate_rport_ids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptfc.c_mptfc_generate_rport_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.fc_rport_identifiers = type { i32, i32, i32, i32 }

@MPI_FC_DEVICE_PAGE0_FLAGS_PLOGI_INVALID = common dso_local global i32 0, align 4
@MPI_FC_DEVICE_PAGE0_FLAGS_PRLI_INVALID = common dso_local global i32 0, align 4
@MPI_FC_DEVICE_PAGE0_FLAGS_TARGETID_BUS_VALID = common dso_local global i32 0, align 4
@MPI_FC_DEVICE_PAGE0_PROT_FCP_TARGET = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.fc_rport_identifiers*)* @mptfc_generate_rport_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptfc_generate_rport_ids(%struct.TYPE_7__* %0, %struct.fc_rport_identifiers* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.fc_rport_identifiers*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.fc_rport_identifiers* %1, %struct.fc_rport_identifiers** %5, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @MPI_FC_DEVICE_PAGE0_FLAGS_PLOGI_INVALID, align 4
  %10 = load i32, i32* @MPI_FC_DEVICE_PAGE0_FLAGS_PRLI_INVALID, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %68

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MPI_FC_DEVICE_PAGE0_FLAGS_TARGETID_BUS_VALID, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %68

23:                                               ; preds = %15
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MPI_FC_DEVICE_PAGE0_PROT_FCP_TARGET, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %68

31:                                               ; preds = %23
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %36, 32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = or i32 %37, %42
  %44 = load %struct.fc_rport_identifiers*, %struct.fc_rport_identifiers** %5, align 8
  %45 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = shl i32 %50, 32
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = or i32 %51, %56
  %58 = load %struct.fc_rport_identifiers*, %struct.fc_rport_identifiers** %5, align 8
  %59 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.fc_rport_identifiers*, %struct.fc_rport_identifiers** %5, align 8
  %64 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @FC_RPORT_ROLE_UNKNOWN, align 4
  %66 = load %struct.fc_rport_identifiers*, %struct.fc_rport_identifiers** %5, align 8
  %67 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %31, %30, %22, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
