; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_fcoe_offload_conn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_fcoe_offload_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_fcoe_params_offload = type { i32*, i32*, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.qed_hash_fcoe_con = type { %struct.qed_fcoe_conn* }
%struct.qed_fcoe_conn = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Failed to find connection for handle %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32, %struct.qed_fcoe_params_offload*)* @qed_fcoe_offload_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_fcoe_offload_conn(%struct.qed_dev* %0, i32 %1, %struct.qed_fcoe_params_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_fcoe_params_offload*, align 8
  %8 = alloca %struct.qed_hash_fcoe_con*, align 8
  %9 = alloca %struct.qed_fcoe_conn*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qed_fcoe_params_offload* %2, %struct.qed_fcoe_params_offload** %7, align 8
  %10 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.qed_hash_fcoe_con* @qed_fcoe_get_hash(%struct.qed_dev* %10, i32 %11)
  store %struct.qed_hash_fcoe_con* %12, %struct.qed_hash_fcoe_con** %8, align 8
  %13 = load %struct.qed_hash_fcoe_con*, %struct.qed_hash_fcoe_con** %8, align 8
  %14 = icmp ne %struct.qed_hash_fcoe_con* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @DP_NOTICE(%struct.qed_dev* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %211

21:                                               ; preds = %3
  %22 = load %struct.qed_hash_fcoe_con*, %struct.qed_hash_fcoe_con** %8, align 8
  %23 = getelementptr inbounds %struct.qed_hash_fcoe_con, %struct.qed_hash_fcoe_con* %22, i32 0, i32 0
  %24 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %23, align 8
  store %struct.qed_fcoe_conn* %24, %struct.qed_fcoe_conn** %9, align 8
  %25 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %26 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %29 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %28, i32 0, i32 18
  store i32 %27, i32* %29, align 4
  %30 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %31 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %30, i32 0, i32 13
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %34 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %33, i32 0, i32 17
  store i32 %32, i32* %34, align 4
  %35 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %36 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %39 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %38, i32 0, i32 16
  store i32 %37, i32* %39, align 4
  %40 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %41 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %40, i32 0, i32 11
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %44 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %43, i32 0, i32 15
  store i32 %42, i32* %44, align 4
  %45 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %46 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %49 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %48, i32 0, i32 14
  store i32 %47, i32* %49, align 4
  %50 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %51 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %54 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %53, i32 0, i32 13
  store i32 %52, i32* %54, align 4
  %55 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %56 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %59 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %58, i32 0, i32 12
  store i32 %57, i32* %59, align 4
  %60 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %61 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %64 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %63, i32 0, i32 11
  store i32 %62, i32* %64, align 4
  %65 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %66 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %69 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %68, i32 0, i32 10
  store i32 %67, i32* %69, align 4
  %70 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %71 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %74 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %73, i32 0, i32 9
  store i32 %72, i32* %74, align 4
  %75 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %76 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %79 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 4
  %80 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %81 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 5
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 8
  %86 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %87 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %85, %90
  %92 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %93 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %95 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 8
  %100 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %101 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %99, %104
  %106 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %107 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %109 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 8
  %114 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %115 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %113, %118
  %120 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %121 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %123 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 5
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 8
  %128 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %129 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %127, %132
  %134 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %135 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %137 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %140, 8
  %142 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %143 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %141, %146
  %148 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %149 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 4
  %150 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %151 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 8
  %156 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %157 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %155, %160
  %162 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %163 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 4
  %164 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %165 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %169 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  store i32 %167, i32* %170, align 4
  %171 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %172 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %176 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %175, i32 0, i32 7
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  store i32 %174, i32* %177, align 4
  %178 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %179 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %183 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %182, i32 0, i32 7
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 4
  %185 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %186 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %190 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %189, i32 0, i32 6
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 2
  store i32 %188, i32* %191, align 4
  %192 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %193 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %197 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %196, i32 0, i32 6
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  store i32 %195, i32* %198, align 4
  %199 = load %struct.qed_fcoe_params_offload*, %struct.qed_fcoe_params_offload** %7, align 8
  %200 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %204 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %203, i32 0, i32 6
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  store i32 %202, i32* %205, align 4
  %206 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %207 = call i32 @QED_AFFIN_HWFN(%struct.qed_dev* %206)
  %208 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %9, align 8
  %209 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %210 = call i32 @qed_sp_fcoe_conn_offload(i32 %207, %struct.qed_fcoe_conn* %208, i32 %209, i32* null)
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %21, %15
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local %struct.qed_hash_fcoe_con* @qed_fcoe_get_hash(%struct.qed_dev*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, i32) #1

declare dso_local i32 @qed_sp_fcoe_conn_offload(i32, %struct.qed_fcoe_conn*, i32, i32*) #1

declare dso_local i32 @QED_AFFIN_HWFN(%struct.qed_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
