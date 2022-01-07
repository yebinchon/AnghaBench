; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_iscsi_offload_conn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_iscsi_offload_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_iscsi_params_offload = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.qed_hash_iscsi_con = type { %struct.qed_iscsi_conn* }
%struct.qed_iscsi_conn = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Failed to find connection for handle %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32, %struct.qed_iscsi_params_offload*)* @qed_iscsi_offload_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iscsi_offload_conn(%struct.qed_dev* %0, i32 %1, %struct.qed_iscsi_params_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_iscsi_params_offload*, align 8
  %8 = alloca %struct.qed_hash_iscsi_con*, align 8
  %9 = alloca %struct.qed_iscsi_conn*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qed_iscsi_params_offload* %2, %struct.qed_iscsi_params_offload** %7, align 8
  %10 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.qed_hash_iscsi_con* @qed_iscsi_get_hash(%struct.qed_dev* %10, i32 %11)
  store %struct.qed_hash_iscsi_con* %12, %struct.qed_hash_iscsi_con** %8, align 8
  %13 = load %struct.qed_hash_iscsi_con*, %struct.qed_hash_iscsi_con** %8, align 8
  %14 = icmp ne %struct.qed_hash_iscsi_con* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @DP_NOTICE(%struct.qed_dev* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %291

21:                                               ; preds = %3
  %22 = load %struct.qed_hash_iscsi_con*, %struct.qed_hash_iscsi_con** %8, align 8
  %23 = getelementptr inbounds %struct.qed_hash_iscsi_con, %struct.qed_hash_iscsi_con* %22, i32 0, i32 0
  %24 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %23, align 8
  store %struct.qed_iscsi_conn* %24, %struct.qed_iscsi_conn** %9, align 8
  %25 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %26 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %25, i32 0, i32 47
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %29 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %28, i32 0, i32 44
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ether_addr_copy(i32 %27, i32 %31)
  %33 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %34 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %33, i32 0, i32 46
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %37 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %36, i32 0, i32 43
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ether_addr_copy(i32 %35, i32 %39)
  %41 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %42 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %41, i32 0, i32 45
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %45 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %44, i32 0, i32 44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i32 %43, i32 %47, i32 4)
  %49 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %50 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %49, i32 0, i32 44
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %53 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %52, i32 0, i32 43
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memcpy(i32 %51, i32 %55, i32 4)
  %57 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %58 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %57, i32 0, i32 44
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %62 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %64 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %63, i32 0, i32 43
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %68 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 4
  %69 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %70 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %69, i32 0, i32 42
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %73 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %72, i32 0, i32 43
  store i32 %71, i32* %73, align 4
  %74 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %75 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %74, i32 0, i32 41
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %78 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %77, i32 0, i32 42
  store i32 %76, i32* %78, align 4
  %79 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %80 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %79, i32 0, i32 40
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %83 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %82, i32 0, i32 41
  store i32 %81, i32* %83, align 4
  %84 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %85 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %84, i32 0, i32 39
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %88 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %87, i32 0, i32 40
  store i32 %86, i32* %88, align 4
  %89 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %90 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %89, i32 0, i32 38
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %93 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %92, i32 0, i32 39
  store i32 %91, i32* %93, align 4
  %94 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %95 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %94, i32 0, i32 37
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %98 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %97, i32 0, i32 38
  store i32 %96, i32* %98, align 4
  %99 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %100 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %99, i32 0, i32 36
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %103 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %102, i32 0, i32 37
  store i32 %101, i32* %103, align 4
  %104 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %105 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %104, i32 0, i32 35
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %108 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %107, i32 0, i32 36
  store i32 %106, i32* %108, align 4
  %109 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %110 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %109, i32 0, i32 34
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %113 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %112, i32 0, i32 35
  store i32 %111, i32* %113, align 4
  %114 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %115 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %114, i32 0, i32 33
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %118 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %117, i32 0, i32 34
  store i32 %116, i32* %118, align 4
  %119 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %120 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %119, i32 0, i32 32
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %123 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %122, i32 0, i32 33
  store i32 %121, i32* %123, align 4
  %124 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %125 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %124, i32 0, i32 31
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %128 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %127, i32 0, i32 32
  store i32 %126, i32* %128, align 4
  %129 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %130 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %129, i32 0, i32 30
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %133 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %132, i32 0, i32 31
  store i32 %131, i32* %133, align 4
  %134 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %135 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %134, i32 0, i32 29
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %138 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %137, i32 0, i32 30
  store i32 %136, i32* %138, align 4
  %139 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %140 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %139, i32 0, i32 28
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %143 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %142, i32 0, i32 29
  store i32 %141, i32* %143, align 4
  %144 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %145 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %144, i32 0, i32 27
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %148 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %147, i32 0, i32 28
  store i32 %146, i32* %148, align 4
  %149 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %150 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %149, i32 0, i32 26
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %153 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %152, i32 0, i32 27
  store i32 %151, i32* %153, align 4
  %154 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %155 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %154, i32 0, i32 25
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %158 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %157, i32 0, i32 26
  store i32 %156, i32* %158, align 4
  %159 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %160 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %159, i32 0, i32 24
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %163 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %162, i32 0, i32 25
  store i32 %161, i32* %163, align 4
  %164 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %165 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %164, i32 0, i32 23
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %168 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %167, i32 0, i32 24
  store i32 %166, i32* %168, align 4
  %169 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %170 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %169, i32 0, i32 22
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %173 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %172, i32 0, i32 23
  store i32 %171, i32* %173, align 4
  %174 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %175 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %174, i32 0, i32 21
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %178 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %177, i32 0, i32 22
  store i32 %176, i32* %178, align 4
  %179 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %180 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %179, i32 0, i32 20
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %183 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %182, i32 0, i32 21
  store i32 %181, i32* %183, align 4
  %184 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %185 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %184, i32 0, i32 19
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %188 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %187, i32 0, i32 20
  store i32 %186, i32* %188, align 4
  %189 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %190 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %189, i32 0, i32 18
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %193 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %192, i32 0, i32 19
  store i32 %191, i32* %193, align 4
  %194 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %195 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %194, i32 0, i32 17
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %198 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %197, i32 0, i32 18
  store i32 %196, i32* %198, align 4
  %199 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %200 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %199, i32 0, i32 16
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %203 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %202, i32 0, i32 17
  store i32 %201, i32* %203, align 4
  %204 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %205 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %204, i32 0, i32 15
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %208 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %207, i32 0, i32 16
  store i32 %206, i32* %208, align 4
  %209 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %210 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %209, i32 0, i32 14
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %213 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %212, i32 0, i32 15
  store i32 %211, i32* %213, align 4
  %214 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %215 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %214, i32 0, i32 13
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %218 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %217, i32 0, i32 14
  store i32 %216, i32* %218, align 4
  %219 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %220 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %219, i32 0, i32 12
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %223 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %222, i32 0, i32 13
  store i32 %221, i32* %223, align 4
  %224 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %225 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %224, i32 0, i32 11
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %228 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %227, i32 0, i32 12
  store i32 %226, i32* %228, align 4
  %229 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %230 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %229, i32 0, i32 10
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %233 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %232, i32 0, i32 11
  store i32 %231, i32* %233, align 4
  %234 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %235 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %234, i32 0, i32 9
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %238 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %237, i32 0, i32 10
  store i32 %236, i32* %238, align 4
  %239 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %240 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %243 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %242, i32 0, i32 9
  store i32 %241, i32* %243, align 4
  %244 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %245 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %244, i32 0, i32 7
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %248 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %247, i32 0, i32 8
  store i32 %246, i32* %248, align 4
  %249 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %250 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %253 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %252, i32 0, i32 7
  store i32 %251, i32* %253, align 4
  %254 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %255 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %258 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %257, i32 0, i32 6
  store i32 %256, i32* %258, align 4
  %259 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %260 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %263 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %262, i32 0, i32 5
  store i32 %261, i32* %263, align 4
  %264 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %265 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %268 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %267, i32 0, i32 4
  store i32 %266, i32* %268, align 4
  %269 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %270 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %273 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %272, i32 0, i32 3
  store i32 %271, i32* %273, align 4
  %274 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %275 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %278 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 4
  %279 = load %struct.qed_iscsi_params_offload*, %struct.qed_iscsi_params_offload** %7, align 8
  %280 = getelementptr inbounds %struct.qed_iscsi_params_offload, %struct.qed_iscsi_params_offload* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %283 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %282, i32 0, i32 1
  store i32 %281, i32* %283, align 4
  %284 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %285 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %284, i32 0, i32 0
  store i32 1, i32* %285, align 4
  %286 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %287 = call i32 @QED_AFFIN_HWFN(%struct.qed_dev* %286)
  %288 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %289 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %290 = call i32 @qed_sp_iscsi_conn_offload(i32 %287, %struct.qed_iscsi_conn* %288, i32 %289, i32* null)
  store i32 %290, i32* %4, align 4
  br label %291

291:                                              ; preds = %21, %15
  %292 = load i32, i32* %4, align 4
  ret i32 %292
}

declare dso_local %struct.qed_hash_iscsi_con* @qed_iscsi_get_hash(%struct.qed_dev*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @qed_sp_iscsi_conn_offload(i32, %struct.qed_iscsi_conn*, i32, i32*) #1

declare dso_local i32 @QED_AFFIN_HWFN(%struct.qed_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
